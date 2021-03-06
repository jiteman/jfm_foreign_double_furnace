data:extend( {
	-- Recipe for making a double furnace.
	-- This is unlocked by researching double-smelting-tech
	{
		type = "recipe",
		name = "double-furnace",
		energy_required = 5,
		
		normal = {
			enabled = false,
			energy_required = 5,			
			ingredients = {
				{ "steel-plate", 15 },
				{ "advanced-circuit", 5 },
				{ "stone-brick", 10 }
			},
			result = "double-furnace"
		},
		expensive = {
			enabled = false,
			energy_required = 5,
			ingredients = {
				{ "steel-plate", 30 },
				{ "advanced-circuit", 10 },
				{ "stone-brick", 20 }
			},
			result = "double-furnace"
		},
	},

	-- Add a new recipe category for double smelting
	{
		type = "recipe-category",
		name = "double-smelting"
	},

	-- The recipe that is used by the double furnace to double burn iron ore.
	-- Double smelting recipe is available from the beginning,
	-- so it doesn't show up in the double furnace research.
	-- But only a double furnace can craft this.
	{
		type = "recipe",
		name = "double-iron",
		category = "double-smelting",    
		-- "energy_required" is actually the time in seconds
		-- 5*ore + 1*steel = 5*3.5+17.5=35
		-- if working in parallel -> 35/2 = 17.5
		-- Jiteman: not really; in case of parallel work we have: total time = the longest time (which is the same for this case)
		normal = {
			enabled = true,
			energy_required = 16,
			ingredients = { { "iron-ore", 5 } },
			result = "steel-plate"
		},	
		expensive = {
			enabled = true,
			energy_required = 32,
			ingredients = { { "iron-ore", 10 } },
			result = "steel-plate"
		}
	}

} )
