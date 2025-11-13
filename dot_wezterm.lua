local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()

config.automatically_reload_config = true

config.window_background_opacity = 0.7

config.font_size = 12.0
config.font = wezterm.font_with_fallback {
  -- ! Windows 
  "Bizin Gothic",
  "Symbols Nerd Font Mono",
}

config.use_ime = true
config.check_for_updates = false
config.audible_bell = "Disabled"

config.mouse_bindings = {
  {
    event = {Down = {streak = 1, button = 'Right'}},
    mods = 'NONE',
    action = act.PasteFrom 'Clipboard',
  },
}

config.color_scheme = 'Darktooth(base16)'

-- ! Windows
config.keys = {
  -- CTRL+Tで新しいタブを開く
  {
    key = 't',
    mods = 'CTRL',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },

  -- CTRL+Wで現在のペインを閉じる
  {
    key = 'w',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
}

-- ! Windows
config.default_prog = { 'powershell.exe' }

return config
