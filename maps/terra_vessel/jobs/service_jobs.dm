/datum/job/crew
	title = "Crewman"
	department = "Service"
	department_flag = SRV
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Executive Officer and TerraGov Personnel"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	outfit_type = /decl/hierarchy/outfit/job/terra_vessel/crew/service/crewman
	allowed_branches = list(
		/datum/mil_branch/exploration_division,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/terra_vessel/crew/service/crewman/fleet,
		/datum/mil_branch/worker = /decl/hierarchy/outfit/job/terra_vessel/crew/service/crewman/alien
	)
	allowed_ranks = list(
		/datum/mil_rank/ed/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/worker/recruit,
		/datum/mil_rank/worker/trained
	)

	access = list(
		access_maint_tunnels, access_emergency_storage
	)

/datum/job/janitor
	title = "Janitor"
	department = "Service"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Executive Officer"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	alt_titles = list(
		"Sanitation Technician")
	outfit_type = /decl/hierarchy/outfit/job/terra_vessel/crew/service/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/exploration_division = /decl/hierarchy/outfit/job/terra_vessel/crew/service/janitor/ec,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/terra_vessel/crew/service/janitor/fleet,
		/datum/mil_branch/worker = /decl/hierarchy/outfit/job/terra_vessel/crew/service/janitor/alien
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/ed/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/worker/recruit,
		/datum/mil_rank/worker/trained
	)
	min_skill = list(   SKILL_HAULING = SKILL_BASIC)

	access = list(
		access_maint_tunnels, access_emergency_storage,
		access_janitor
	)

	minimal_access = list()
