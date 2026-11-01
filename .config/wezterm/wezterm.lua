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

-- switch theme by OS
local function scheme()
  local dark = wezterm.gui.get_appearance():find("Dark")
  return dark and "Catppuccin Mocha" or "Catppuccin Latte"
end
config.color_scheme = scheme()

config.window_decorations = 'TITLE | RESIZE'
config.enable_tab_bar = false

-- Capital K was not working for some reason
config.keys = {
  {
    key = 'k',
    mods = 'CMD',
    action = act.ClearScrollback 'ScrollbackAndViewport',
  },
}

-- Start tmux on open: attach to the "main" session, or create it if it doesn't exist
config.default_prog = { '/bin/zsh', '-l', '-c', 'tmux new-session -A -s main' }


-- Finally, return the configuration to wezterm:
return config


