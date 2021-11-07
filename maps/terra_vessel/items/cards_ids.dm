#define ALIEN_ID_COLOR "#e3d8d3"

/obj/item/card/id/terra_vessel
	name = "identification card"
	desc = "An identification card issued to personnel aboard the TGLV Ion."
	color = "#d3e3e1"
	job_access_type = DEFAULT_JOB_TYPE

// TerraGov Crew and Contractors
/obj/item/card/id/terra_vessel/crew
	desc = "An identification card issued to TerraGov crewmembers aboard the TGLV Ion."
	job_access_type = /datum/job/crew

/obj/item/card/id/terra_vessel/crew/alien
	desc = "An identification card issued to the aliens that work within TerraGov."
	color = ALIEN_ID_COLOR

/obj/item/card/id/terra_vessel/crew/service //unused
	job_access_type = DEFAULT_JOB_TYPE
	detail_color = COLOR_CIVIE_GREEN

/obj/item/card/id/terra_vessel/crew/service/janitor
	job_access_type = /datum/job/janitor

/obj/item/card/id/terra_vessel/crew/service/janitor/alien
	desc = "An identification card issued to the aliens that work within TerraGov."
	color = ALIEN_ID_COLOR

#undef ALIEN_ID_COLOR
