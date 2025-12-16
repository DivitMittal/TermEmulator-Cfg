-- Tab title string
-- local function basename(s)
--   return string.gsub(s, "(.*[/\\])(.*)", "%2")
-- end
--
-- W.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
--   local index = tab.tab_index + 1
--   local title = tab.active_pane.title
--   local pane = tab.active_pane
--   local progress = basename(pane.foreground_process_name)
--   local text = index .. ": " .. title .. " [" .. progress .. "]"
--   return {
--     { Text = text },
--   }
-- end)

local tabline = W.plugin.require "https://github.com/michaelbrusegard/tabline.wez"

tabline.setup {
  options = {
    theme = "Dracula",
  },
  sections = {
    tabline_a = { "mode" },
    tabline_b = { "workspace" },
    tabline_x = {},
    tabline_y = {},
    tabline_z = { "domain" },
  },
}

M.tab_bar_at_bottom = true
M.hide_tab_bar_if_only_one_tab = true

tabline.apply_to_config(M)
