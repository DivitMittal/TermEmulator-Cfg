local smart_splits = W.plugin.require "https://github.com/mrjones2014/smart-splits.nvim"

smart_splits.apply_to_config(M, {
  direction_keys = { "LeftArrow", "DownArrow", "UpArrow", "RightArrow" },

  modifiers = {
    move = "CTRL", -- CTRL+Arrow to move between panes
    resize = "ALT", -- ALT+Arrow to resize panes
  },
})
