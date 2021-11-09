/decl/hierarchy/outfit/job/terra_vessel/crew/security
	hierarchy_type = /decl/hierarchy/outfit/job/terra_vessel/crew/security
	l_ear = /obj/item/device/radio/headset/headset_sec
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/torch/crew/security/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/terra_vessel/crew/security/brig_chief
	name = OUTFIT_JOB_NAME("Brig Chief")
	uniform = /obj/item/clothing/under/terragov/utility/exploration/security
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/terra_vessel/crew/security/brigchief)
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/terra_vessel/crew/security/brig_chief/fleet
	name = OUTFIT_JOB_NAME("Brig Chief - Fleet")
	uniform = /obj/item/clothing/under/terragov/utility/fleet/security
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/terra_vessel/crew/security/offcer
	name = OUTFIT_JOB_NAME("Security Officer")
	uniform = /obj/item/clothing/under/terragov/utility/exploration/security
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/terra_vessel/crew/security)
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/terra_vessel/crew/security/officer/fleet
	name = OUTFIT_JOB_NAME("Security Officer - Fleet")
	uniform = /obj/item/clothing/under/terragov/utility/fleet/security
	shoes = /obj/item/clothing/shoes/dutyboots
