/datum/computer_file/program/ntnet_dos
	filename = "ntn_dos"
	filedesc = "DoS Traffic Generator"
	program_icon_state = "hostile"
	program_key_state = "security_key"
	program_menu_icon = "arrow-4-diag"
	extended_desc = "This advanced script can perform denial of service attacks against NTNet quantum relays. The system administrator will probably notice this. Multiple devices can run this program together against same relay for increased effect"
	size = 20
	requires_ntnet = TRUE
	available_on_ntnet = FALSE
	available_on_syndinet = TRUE
	nanomodule_path = /datum/nano_module/program/computer_dos/
	var/obj/machinery/ntnet_relay/target = null
	var/dos_speed = 0
	var/error = ""
	var/executed = 0

/datum/computer_file/program/ntnet_dos/process_tick()
	dos_speed = 0
	switch(ntnet_status)
		if(1)
			dos_speed = NTNETSPEED_LOWSIGNAL
		if(2)
			dos_speed = NTNETSPEED_HIGHSIGNAL
		if(3)
			dos_speed = NTNETSPEED_ETHERNET
	dos_speed *= NTNETSPEED_DOS_AMPLIFICATION + operator_skill - SKILL_BASIC
	if(target && executed)
		target.dos_overload += dos_speed
		if(!target.operable())
			target.dos_sources.Remove(src)
			target = null
			error = "Connection to destination relay lost."

/datum/computer_file/program/ntnet_dos/on_shutdown(var/forced)
	if(target)
		target.dos_sources.Remove(src)
		target = null
	executed = 0

	..(forced)

/datum/nano_module/program/computer_dos
	name = "DoS Traffic Generator"

/datum/nano_module/program/computer_dos/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1, var/datum/topic_state/state = GLOB.default_state)
	if(!ntnet_global)
		return
	var/datum/computer_file/program/ntnet_dos/PRG = program
	var/list/data = list()
	if(!istype(PRG))
		return
	data = PRG.get_header_data()

	if(PRG.error)
		data["error"] = PRG.error
	else if(PRG.target && PRG.executed)
		data["target"] = 1
		data["speed"] = PRG.dos_speed

		// This is mostly visual, generate some strings of 1s and 0s
		// Probability of 1 is equal of completion percentage of DoS attack on this relay.
		// Combined with UI updates this adds quite nice effect to the UI
		var/percentage = PRG.target.dos_overload * 100 / PRG.target.dos_capacity
		var/list/strings[0]
		for(var/j, j<10, j++)
			var/string = ""
			for(var/i, i<20, i++)
				string = "[string][prob(percentage)]"
			strings.Add(string)
		data["dos_strings"] = strings
	else
		var/list/relays[0]
		for(var/obj/machinery/ntnet_relay/R in ntnet_global.relays)
			relays.Add(R.uid)
		data["relays"] = relays
		data["focus"] = PRG.target ? PRG.target.uid : null

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "ntnet_dos.tmpl", "DoS Traffic Generator", 400, 250, state = state)
		ui.auto_update_layout = 1
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)

/datum/computer_file/program/ntnet_dos/Topic(href, href_list)
	if(..())
		return 1
	if(href_list["PRG_target_relay"])
		for(var/obj/machinery/ntnet_relay/R in ntnet_global.relays)
			if("[R.uid]" == href_list["PRG_target_relay"])
				target = R
		return 1
	if(href_list["PRG_reset"])
		if(target)
			target.dos_sources.Remove(src)
			target = null
		executed = 0
		error = ""
		return 1
	if(href_list["PRG_execute"])
		if(!target)
			return 1
		executed = 1
		target.dos_sources.Add(src)
		operator_skill = usr.get_skill_value(SKILL_COMPUTER)

		var/list/sources_to_show = list(computer.get_network_tag())
		var/extra_to_show = 2 * max(operator_skill - SKILL_TRAINED, 0)
		if(extra_to_show)
			for(var/i = 1, i <= extra_to_show, i++)
				var/nid = pick(ntnet_global.registered_nids)
				var/datum/extension/interactive/ntos/os = ntnet_global.registered_nids[nid]
				sources_to_show |= os.get_network_tag()

		if(ntnet_global.intrusion_detection_enabled)
			ntnet_global.add_log("IDS WARNING - Excess traffic flood targeting relay [target.uid] detected from [length(sources_to_show)] device\s: [english_list(sources_to_show)]")
			ntnet_global.intrusion_detection_alarm = 1
		return 1
