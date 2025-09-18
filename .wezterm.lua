local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux

config.color_scheme = "Catppuccin Mocha"
config.hide_tab_bar_if_only_one_tab = true

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():toggle_fullscreen()
end)

return config
