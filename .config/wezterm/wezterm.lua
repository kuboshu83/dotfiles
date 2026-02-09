-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
config.automatically_reload_config = true
config.font_size = 13.5
config.use_ime = true

config.window_background_opacity = 0.75
config.macos_window_background_blur = 10

config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'

-- and finally, return the configuration to wezterm
return config
