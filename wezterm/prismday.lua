-- PrismDay for WezTerm, part of cosmic-prismday-theme (MIT).
-- Colours follow the COSMIC Terminal scheme (cosmic-term/).
--
-- Install: ./wezterm/install.sh puts this in ~/.config/wezterm/, then in
-- ~/.config/wezterm/wezterm.lua:
--   config.colors = require("prismday")
-- To follow COSMIC's Dark / Light toggle with the Prism half installed too:
--   local dark = (wezterm.gui and wezterm.gui.get_appearance() or "Dark"):find("Dark")
--   config.colors = require(dark and "prism" or "prismday")

return {
  foreground = "#242B3D",
  background = "#DFEAEC",

  cursor_bg = "#804C4F",
  cursor_fg = "#DFEAEC",
  cursor_border = "#804C4F",
  compose_cursor = "#963E36",

  selection_bg = "#CBD6D8",
  selection_fg = "none",

  scrollbar_thumb = "#CBD6D8",
  split = "#CBD6D8",

  -- black, red, green, yellow, blue, magenta, cyan, white
  ansi = { "#D5E0E2", "#B52817", "#2347A9", "#526664", "#804C4F", "#963E36", "#306B65", "#48505C" },
  brights = { "#7B8CAD", "#912012", "#1D3B8B", "#445553", "#6D4143", "#78322B", "#306B65", "#171E30" },

  copy_mode_active_highlight_bg = { Color = "#804C4F" },
  copy_mode_active_highlight_fg = { Color = "#DFEAEC" },
  copy_mode_inactive_highlight_bg = { Color = "#526664" },
  copy_mode_inactive_highlight_fg = { Color = "#DFEAEC" },

  quick_select_label_bg = { Color = "#963E36" },
  quick_select_label_fg = { Color = "#DFEAEC" },
  quick_select_match_bg = { Color = "#526664" },
  quick_select_match_fg = { Color = "#DFEAEC" },

  tab_bar = {
    background = "#DFEAEC",
    active_tab = { bg_color = "#804C4F", fg_color = "#DFEAEC", intensity = "Bold" },
    inactive_tab = { bg_color = "#EEF8F9", fg_color = "#306B65" },
    inactive_tab_hover = { bg_color = "#D5E0E2", fg_color = "#242B3D" },
    new_tab = { bg_color = "#DFEAEC", fg_color = "#306B65" },
    new_tab_hover = { bg_color = "#D5E0E2", fg_color = "#804C4F" },
  },
}
