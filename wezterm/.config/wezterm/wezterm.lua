-- Pull in the wezterm API
local wezterm = require('wezterm')

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = 'Tokyo Night'
config.font_size = 16
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = 'TITLE | RESIZE'

-- Keybindings
config.leader = { key = 'q', mods = 'CTRL', timeout_miliseconds = 1000 }
--config.keys = {
--	{ key = '\"', mods = 'LEADER',
--	action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }, },
--}

-- and finally, return the configuration to wezterm
return config
