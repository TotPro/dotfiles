-- Pull in the wezterm API
local wezterm = require("wezterm")
local keybinds = require("keybinds")

-- This table will hold the configuration.
local config = {}
-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.disable_default_key_bindings = true
config.keys = keybinds.keys
config.key_tables = keybinds.key_tables

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "AdventureTime"
config.color_scheme = "Aci (Gogh)"
-- config.color_scheme = "aikofog (terminal.sexy)"
-- config.color_scheme = "Andromeda"
config.font_size = 16

-- and finally, return the configuration to wezterm
return config
