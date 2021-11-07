/datum/map/terra_vessel
	name = "\improper TerraGov Vessel"
	full_name = "\improper Terran Government Light Vessel"
	path = "terra_vessel"
	config_path = "config/terravessel_config.txt"

	lobby_screens = list('maps/terra_vessel/lobby.png')
	lobby_tracks = list(/decl/audio/track/absconditus)

	admin_levels  = list(7)
	escape_levels = list(8)
	empty_levels  = list(9)
	accessible_z_levels = list("1"=1,"2"=3,"3"=1,"4"=1,"5"=1,"6"=1,"9"=30)
	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list("freemail.net", "aw.worker.tg", "terra.tg", "terra.ed.tg", "fleet.tg", "army.tg")

	allowed_spawns = list("Arrivals Shuttle")

	station_name  = "\improper TGLV Ion"
	station_short = "\improper Ion"
	dock_name     = "TBD"
	boss_name     = "Exploration Division Command"
	boss_short    = "Command"
	company_name  = "Terran Government"
	company_short = "TerraGov"

	shuttle_docked_message = "The shuttle has docked."
	shuttle_leaving_dock = "The shuttle has departed from home dock."
	shuttle_called_message = "A scheduled transfer shuttle has been sent."
	shuttle_recall_message = "The shuttle has been recalled"
	emergency_shuttle_docked_message = "The emergency escape shuttle has docked."
	emergency_shuttle_leaving_dock = "The emergency escape shuttle has departed from %dock_name%."
	emergency_shuttle_called_message = "An emergency escape shuttle has been sent."
	emergency_shuttle_recall_message = "The emergency shuttle has been recalled"

	map_admin_faxes = list(
		"Exploration Division Command",
		"Terran Government Military Command",
		"Terran Government",
		"Earth Reclamation Agency",
		"Bureau of Diplomatic Affairs",
		"Ministry of Alien Affairs", // Diplomatic Affairs, but less diplomatic.
		"Emergency Management Bureau"
	)

	use_overmap = 1
	num_exoplanets = 1

	away_site_budget = 3
	min_offmap_players = 12
