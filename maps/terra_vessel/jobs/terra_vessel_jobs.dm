/datum/map/torch
	default_assistant_title = "Passenger"

	species_to_job_whitelist = list(
		/datum/species/adherent = list(/datum/job/ai, /datum/job/cyborg, ),
		/datum/species/nabber = list(/datum/job/ai, /datum/job/cyborg, ),
		/datum/species/vox = list(/datum/job/ai, /datum/job/cyborg),
		/datum/species/human/mule = list(/datum/job/ai, /datum/job/cyborg)
	)

/datum/job
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	required_language = LANGUAGE_HUMAN_EURO
