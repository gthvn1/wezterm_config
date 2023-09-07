-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where configuration is done:
config.color_scheme = "Dracula"

config.font = wezterm.font("FiraCode Nerd Font Mono", {
	weight = "Regular",
})
config.font_size = 10.0

-- config.keys = {
-- 	{
-- 		key = "h",
-- 		mods = "CTRL|SHIFT",
-- 		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
-- 	},
-- 	{
-- 		key = "v",
-- 		mods = "CTRL|SHIFT",
-- 		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
-- 	},
-- }

return config
