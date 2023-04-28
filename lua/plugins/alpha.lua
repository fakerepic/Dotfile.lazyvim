local logo = {
  -- "                            ▄ ▄                   ",
  -- "                        ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
  -- "                        █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
  -- "                     ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
  -- "                   ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
  -- "                   █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
  -- "                   █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
  -- "                  ▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
  -- "                     █▄▄▄▄▄▄▄▄▄ ▄▄▄▄▄█ █▄█▄▄▄█    ",
  -- "                                                  ",
  -- "          ▄ ▄                   ",
  -- "      ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
  -- "      █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
  -- "   ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
  -- " ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
  -- " █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
  -- " █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
  -- "▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
  -- "   █▄▄▄▄▄▄▄▄▄ ▄▄▄▄▄█ █▄█▄▄▄█    ",
  -- "                                ",
  "            ██╗   ██╗██╗     ██ ██╗ ██ ╗   ██╗ █ ████╗          Z  ",
  "            ╚██╗ ██╔╝██║    ██╔══██╗██ █╗  ██║██ ════╝      Z      ",
  "             ╚████╔╝ ██║    ███ ███║██╔██╗ ██║██   ███╗  z         ",
  "              ╚██╔╝  ██║    ██╔══██║██║╚██╗██║██    ██║z           ",
  "               ██║   ██████╗██║  ██║██║ ╚████║╚█ ████╔╝   ",
  "               ╚═╝   ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝    ",
  -- ██╗   ██╗██╗███╗   ███╗
  -- ██║   ██║██║████╗ ████║
  -- ██║   ██║██║██╔████╔██║
  -- ╚██╗ ██╔╝██║██║╚██╔╝██║
  --  ╚████╔╝ ██║██║ ╚═╝ ██║
  --   ╚═══╝  ╚═╝╚═╝     ╚═╝
}

return {
  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      -- local button = dashboard.button("p", " " .. " Projects", ":Telescope projects <CR>")
      -- button.opts.hl = "AlphaButtons"
      -- button.opts.hl_shortcut = "AlphaShortcut"
      -- table.insert(dashboard.section.buttons.val, 4, button)
      dashboard.section.header.val = logo
      dashboard.section.footer.opts.hl = "String"
      -- dashboard.section.header.opts.hl = "Number"
      dashboard.section.buttons.opts.spacing = 0
    end,
  },
}
