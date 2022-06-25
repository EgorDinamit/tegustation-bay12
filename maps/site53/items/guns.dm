/obj/item/gun/projectile/shotgun/tactical
	name = "combat shotgun"
	desc = "A fully automatic shotgun, This one has a orange stripe."
	icon_state = "tac_shotgun"
	item_state = "cshotgun"
	caliber = CALIBER_SHOTGUN
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 7
	w_class = ITEM_SIZE_HUGE
	force = 10
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 1)
	ammo_type = /obj/item/ammo_casing/shotgun
	one_hand_penalty = 2
	wielded_item_state = "gun_wielded"

	burst_delay = 0

/obj/item/gun/projectile/shotgun/tactical/beanbag
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag

/obj/item/gun/projectile/pistol/mk9
	name = "MK9 Envy"
	desc = "Standard issue 9mm pistol of the SCP Foundation, based on the Makarov."
	icon_state = "MK9"
	w_class = ITEM_SIZE_NORMAL
	caliber = "9mm"
	silenced = 0
	fire_delay = 4
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2, TECH_ILLEGAL = 2)
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/scp/mk9
	allowed_magazines = list(/obj/item/ammo_magazine/scp/mk9, /obj/item/ammo_magazine/scp/mk9/rubber)

/obj/item/gun/projectile/revolver/mateba
	name = "mateba"
	desc = "The Mateba Model 6 Unica or simply Mateba is one of the only few of this type ever produced, you could consider yourself lucky even seeing one."
	icon_state = "mateba"
	caliber = ".50"
	fire_delay = 6
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	ammo_type = /obj/item/ammo_casing/a50