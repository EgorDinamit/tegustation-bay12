#if !defined(using_map_DATUM)
	#include "terra_vessel_areas.dm"
	#include "terra_vessel_overmap.dm"
	#include "terra_vessel_shuttles.dm"
	#include "terra_vessel_radio.dm"
	#include "terra_vessel_ranks.dm"
	#include "terra_vessel_setup.dm"
	#include "terra_vessel_shuttles.dm"
	#include "terra_vessel_unit_testing.dm"

	#include "jobs/terra_vessel_jobs.dm"
	//#include "jobs/command_jobs.dm"
	//#include "jobs/corporate_jobs.dm"
	//#include "jobs/engineering_jobs.dm"
	//#include "jobs/exploration_jobs.dm"
	//#include "jobs/medical_jobs.dm"
	//#include "jobs/misc_jobs.dm"
	//#include "jobs/research_jobs.dm"
	//#include "jobs/security_jobs.dm"
	#include "jobs/service_jobs.dm"
	//#include "jobs/supply_jobs.dm"

	#include "jobs/outfits/terra_vessel_outfits.dm"
	//#include "jobs/outfits/command_outfits.dm"
	//#include "jobs/outfits/corporate_outfits.dm"
	//#include "jobs/outfits/engineering_outfits.dm"
	//#include "jobs/outfits/exploration_outfits.dm"
	//#include "jobs/outfits/medical_outfits.dm"
	//#include "jobs/outfits/misc_outfits.dm"
	//#include "jobs/outfits/research_outfits.dm"
	//#include "jobs/outfits/security_outfits.dm"
	#include "jobs/outfits/service_outfits.dm"
	//#include "jobs/outfits/supply_outfits.dm"
	//#include "jobs/outfits/unused_outfits.dm"

	#include "items/cards_ids.dm"

	#include "terra_vessel-1.dmm"
	#include "terra_vessel-2.dmm"
	#include "terra_vessel-3.dmm"

	#include "../away/empty.dmm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/voxship/voxship.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"
	#include "../away/meatstation/meatstation.dm"
	#include "../away/miningstation/miningstation.dm"
	#include "../away/mininghome/mininghome.dm"
	#include "../away/scavver/scavver_gantry.dm"
	#include "../away/verne/verne.dm"
	#include "../away/rawl/rawl.dm"
	#include "../away/ascent_caulship/_ascent_caulship.dm"

	#define using_map_DATUM /datum/map/terra_vessel

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring terra vessel

#endif
