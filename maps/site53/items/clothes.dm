/obj/item/clothing/under/lczwhitejunioruniform
	name = "LCZ junior security uniform"
	desc = "A sterile white uniform. Currently issued to LCZ Junior Guard personnel."
	icon_state = "white_lcz"

/obj/item/clothing/under/scp/lczwhiteuniform
	name = "LCZ security uniform"
	desc = "A sterile white uniform. Currently issued to LCZ Guard personnel."
	icon_state = "white_sergeant_lcz"


/obj/item/clothing/gloves/tactical/scp
	desc = "These grey tactical gloves are made from a durable synthetic, and have hardened knuckles."
	name = "tactical gloves"
	icon_state = "scpgloves"
	item_state = "scpgloves"
	force = 5
	body_parts_covered = HANDS
	siemens_coefficient = 0.50
	permeability_coefficient = 0.05
	armor = list(melee = 80, bullet = 80, laser = 60, energy = 25, bomb = 50, bio = 10, rad = 0)

/obj/item/clothing/mask/smokable/cigarette/bluelady
	name = "'blue lady' cigarette"
	brand = "\improper Blue Lady"
	desc = "The words 'Blue Lady' are written on this deftly-rolled cigarette in blue ink."
//	filling = list(/datum/reagent/tobacco/fine = 1)

/obj/item/clothing/mask/smokable/cigarette/bluelady/Initialize()
	. = ..()

/obj/item/clothing/mask/smokable/cigarette/bluelady/light()
	. = ..()
	for(var/mob/living/carbon/human/affected in range(1, src))
		affected?.update_013_status()
