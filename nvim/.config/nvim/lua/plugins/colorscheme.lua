--return {
--  {
--    "sainnhe/sonokai",
--    priority = 1000,
--    config = function()
--      vim.g.sonokai_transparent_background = "1"
--      vim.g.sonokai_enable_italic = "1"
--      vim.g.sonokai_style = "andromeda"
--      vim.cmd.colorscheme("sonokai")
--    end,
--  },
--  {
--    "craftzdog/solarized-osaka.nvim",
--    lazy = false,
--  },
--  {
--    "Yazeed1s/minimal.nvim",
--    lazy = false,
--  },
--}

-- lua/plugins/kanagawa.lua

return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      local transparent = true

      local function load_theme()
        require("kanagawa").setup({
          transparent = transparent,
          theme = "wave",
        })

        vim.cmd.colorscheme("kanagawa")
      end

      load_theme()

      vim.keymap.set("n", "<leader>ut", function()
        transparent = not transparent
        load_theme()
        vim.notify("Transparency: " .. (transparent and "ON" or "OFF"))
      end, { desc = "Toggle transparency" })
    end,
  },
}
