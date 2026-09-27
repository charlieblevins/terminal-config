-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()


---------------------------------------------------------------
--- Appearance & UI
--------------------------------------------------------------

-- new windows:
config.initial_cols = 120
config.initial_rows = 28

-- font
config.font = wezterm.font('Intel One Mono', { weight = 'Medium' })
config.font_size = 14

-- lines
config.line_height = 1.2

--------------------------
-- Color Scheme (Theme) --
-------------------------
--config.color_scheme = 'Belafonte Day'
--config.color_scheme = 'BirdsOfParadise'
--config.color_scheme = 'Breath Light (Gogh)'
config.color_scheme = 'Breath Silverfox (Gogh)'
--config.color_scheme = 'Breeze'
--config.color_scheme = 'Chameleon (Gogh)'
--config.color_scheme = 'Gotham (Gogh)'
--config.color_scheme = 'GuvboxDarkHard'

config.window_decorations = 'RESIZE'
config.enable_tab_bar = false

-- Capital K was not working for some reason
config.keys = {
  {
    key = 'k',
    mods = 'CMD',
    action = act.ClearScrollback 'ScrollbackAndViewport',
  },
}


-- Finally, return the configuration to wezterm:
return config


