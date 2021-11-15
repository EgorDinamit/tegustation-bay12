/datum/job/assistant
	title = "Passenger"
	total_positions = 12
	spawn_positions = 12
	supervisors = "the Executive Officer"
	economic_power = 6
	announced = FALSE
	alt_titles = list(
		"Journalist" = /decl/hierarchy/outfit/job/terra_vessel/passenger/passenger/journalist,
		"Historian",
		"Botanist",
		"Investor" = /decl/hierarchy/outfit/job/terra_vessel/passenger/passenger/investor,
		"Psychologist" = /decl/hierarchy/outfit/job/terra_vessel/passenger/passenger/psychologist,
		"Naturalist",
		"Ecologist",
		"Entertainer",
		"Sociologist",
		"Trainer")
	outfit_type = /decl/hierarchy/outfit/job/terra_vessel/passenger/passenger
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
