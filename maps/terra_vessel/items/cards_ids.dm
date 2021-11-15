#define ALIEN_ID_COLOR "#e3d8d3"

/obj/item/card/id/terra_vessel
	name = "identification card"
	desc = "An identification card issued to personnel aboard the TGLV Ion."
	color = "#d3e3e1"
	job_access_type = DEFAULT_JOB_TYPE

/obj/item/card/id/terra_vessel/silver
	desc = "A silver identification card belonging to heads of staff."
	item_state = "silver_id"
	job_access_type = /datum/job/hop
	extra_details = list("goldstripe")
	color = "#ccecff"

/obj/item/card/id/terra_vessel/gold
	desc = "A golden identification card belonging to the Commanding Officer."
	item_state = "gold_id"
	job_access_type = /datum/job/captain
	color = "#d4c780"
	extra_details = list("goldstripe")

// Passenger
/obj/item/card/id/terra_vessel/passenger
	desc = "A card issued to passengers aboard the TGLV Ion."
	job_access_type = DEFAULT_JOB_TYPE
	detail_color = COLOR_PAKISTAN_GREEN

/obj/item/card/id/terra_vessel/passenger/research
	desc = "A card issued to civilian personnel aboard the TGLV Ion."
	job_access_type = /datum/job/scientist_assistant
	detail_color = COLOR_BOTTLE_GREEN

/obj/item/card/id/terra_vessel/passenger/research/scientist
	job_access_type = /datum/job/scientist

// TerraGov Crew
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

/obj/item/card/id/terra_vessel/crew/service/chef
	job_access_type = /datum/job/chef

// Security
/obj/item/card/id/terra_vessel/silver/security
	job_access_type = /datum/job/hos
	detail_color = "#e00000"

/obj/item/card/id/terra_vessel/crew/security
	job_access_type = /datum/job/officer
	detail_color = "#e00000"

/obj/item/card/id/terra_vessel/crew/security/brigchief
	job_access_type = /datum/job/warden
	extra_details = list("onegoldstripe")

// Command
/obj/item/card/id/terra_vessel/crew/representative
	job_access_type = /datum/job/representative
	detail_color = COLOR_COMMAND_BLUE

/obj/item/card/id/terra_vessel/crew/sea
	job_access_type = /datum/job/sea
	detail_color = COLOR_COMMAND_BLUE
	extra_details = list("onegoldstripe")

/obj/item/card/id/terra_vessel/crew/bridgeofficer
	job_access_type = /datum/job/bridgeofficer
	detail_color = COLOR_COMMAND_BLUE

// Medical
/obj/item/card/id/terra_vessel/silver/medical
	job_access_type = /datum/job/cmo
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/terra_vessel/crew/medical
	job_access_type = /datum/job/doctor
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/terra_vessel/crew/medical/senior
	job_access_type = /datum/job/senior_doctor

/obj/item/card/id/terra_vessel/contractor/medical
	job_access_type = /datum/job/doctor
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/terra_vessel/contractor/medical/senior
	job_access_type = /datum/job/senior_doctor

/obj/item/card/id/terra_vessel/contractor/chemist
	job_access_type = /datum/job/chemist
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/terra_vessel/contractor/medical/counselor
	job_access_type = /datum/job/psychiatrist

// Engineering
/obj/item/card/id/terra_vessel/silver/engineering
	job_access_type = /datum/job/chief_engineer
	detail_color = COLOR_SUN

/obj/item/card/id/terra_vessel/crew/engineering
	job_access_type = /datum/job/engineer
	detail_color = COLOR_SUN

/obj/item/card/id/terra_vessel/crew/engineering/senior
	job_access_type = /datum/job/senior_engineer
	extra_details = list("onegoldstripe")

/obj/item/card/id/terra_vessel/contractor/engineering
	job_access_type = /datum/job/engineer
	detail_color = COLOR_SUN

/obj/item/card/id/terra_vessel/contractor/engineering/roboticist
	job_access_type = /datum/job/roboticist

// Research
/obj/item/card/id/terra_vessel/silver/research
	job_access_type = /datum/job/rd
	detail_color = COLOR_RESEARCH
	color = COLOR_WHITE

/obj/item/card/id/terra_vessel/crew/research
	desc = "A card issued to science personnel aboard the TGLV Ion."
	job_access_type = /datum/job/scientist_assistant
	detail_color = COLOR_RESEARCH

/obj/item/card/id/terra_vessel/crew/research/senior_scientist
	job_access_type = /datum/job/senior_scientist
	extra_details = list("onegoldstripe")

/obj/item/card/id/terra_vessel/crew/research/scientist
	job_access_type = /datum/job/scientist

// Exploration
/obj/item/card/id/terra_vessel/crew/pathfinder
	job_access_type = /datum/job/pathfinder
	detail_color = COLOR_PURPLE
	extra_details = list("onegoldstripe")

/obj/item/card/id/terra_vessel/crew/explorer
	job_access_type = /datum/job/explorer
	detail_color = COLOR_PURPLE

#undef ALIEN_ID_COLOR
