/decl/hierarchy/outfit/job/terra_vessel/passenger/passenger
	name = OUTFIT_JOB_NAME("Passenger")
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda
	id_types = list(/obj/item/card/id/terra_vessel/passenger)

/decl/hierarchy/outfit/job/terra_vessel/passenger/passenger/psychologist
	name = OUTFIT_JOB_NAME("Passenger")
	uniform = /obj/item/clothing/under/rank/psych/turtleneck
	shoes = /obj/item/clothing/shoes/laceup

/decl/hierarchy/outfit/job/terra_vessel/passenger/passenger/journalist
	name = OUTFIT_JOB_NAME("Journalist")
	backpack_contents = list(/obj/item/device/camera/tvcamera = 1,
	/obj/item/clothing/accessory/badge/press = 1)

/decl/hierarchy/outfit/job/terra_vessel/passenger/passenger/investor
	name = OUTFIT_JOB_NAME("Investor")

/decl/hierarchy/outfit/job/terra_vessel/passenger/passenger/investor/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/storage/secure/briefcase/money/case = new(H.loc)
	H.put_in_hands(case)
