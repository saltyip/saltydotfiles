return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
                                                                
       ________________
     |'-.--._ _________:
     |  /    |  __    __\
     | |  _  | [\_\= [\_\
     | |.' '. \.........|
     | ( <)  ||:       :|_
      \ '._.' | :.....: |_(o
       '-\_   \ .------./
       _   \   ||.---.||  _
      / \  '-._|/\n~~\n' | \
     (| []=.--[===[()]===[) |
     <\_/  \_______/ _.' /_/
     ///            (_/_/
     |\\            [\\
     ||:|           | I|
     |::|           | I|
     ||:|           | I|
     ||:|           : \:
     |\:|            \I|
     :/\:            ([])
     ([])             [|
      ||              |\_
     _/_\_            [ -'-.__
snd <]   \>            \_____.>
      \__/
]],
          keys = {
            { icon = " ", key = "f", desc = "find file",    action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "new file",     action = ":ene | startinsert" },
            { icon = " ", key = "r", desc = "recent files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = " ", key = "g", desc = "live grep",    action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "c", desc = "config",       action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = "󰒲 ", key = "l", desc = "lazy",        action = ":Lazy" },
            { icon = " ", key = "q", desc = "quit",         action = ":qa" },
          },
        },
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}
