--[[
minimap_on - Enable the minimap in your favourite configuration
License: 3-clause BSD (see https://opensource.org/licenses/BSD-3-Clause)
Author: Hubert Tournier
--]]

local mod_name = assert(core.get_current_modname())

local config = {
	mode = core.settings:get("minimap_on_mode") or 1, -- 0 to 6
	shape = core.settings:get("minimap_on_shape") or "square" -- or "round"
}

core.register_on_mods_loaded(function()
	--	Check restrictions on client-side mods usage
	local csm_restrictions = core.get_csm_restrictions()
	
	if csm_restrictions.load_client_mods then
		print(core.colorize("red", "Loading client-side mods is disabled by the server"))
	else
		print(core.colorize("palegreen", "Client-side mod '" .. mod_name .. "' loaded"))
	end
end)

core.after(1, function()
	-- Configure and (if required) enable the minimap
	core.ui.minimap:set_mode(config.mode)
	if config.shape == "square" then
		core.ui.minimap:set_shape(0)
	else
		core.ui.minimap:set_shape(1)
	end
	if config.mode ~= 0 then
		core.ui.minimap:show()
	end
end)
