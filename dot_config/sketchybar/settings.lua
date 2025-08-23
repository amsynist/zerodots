local main_font = "MonoLisa Nerd Font Mono"
local icon_font = "SF Pro Text"

return {
  display = 1,
  paddings = 5,
  group_paddings = 5,
  corner_radius = 8,
  bar = {
    height = 40,
  },
  y_offset = 5,

  -- Apple Menu Config
  app = {
    offset = {
      y = 60,
      x = 5,
    },
    corner_radius = 2,
    font = {
      text = {
        family = main_font,
        size = 14.0,
      },
      numbers = {
        family = main_font,
        size = 14.0,
      },
      icons = icon_font, -- Used for icons (or NerdFont)
      style_map = {
        ["Regular"] = "Regular",
        ["Semibold"] = "Regular",
        ["Bold"] = "Bold",
        ["Heavy"] = "Bold",
        ["Black"] = "Bold",
      },
      overrides = {
        TimeView = {
          family = main_font,
          size = 2.0,
        },
      },
    },
  },
  icons = "sf-symbols", -- Options: "sf-symbols", "nerdfont"
  animated_icons = true, -- Set to true if you want to use animated icons

  font = {
    text = main_font,  -- Used for text
    numbers = main_font, -- Used for numbers
    icons = icon_font, -- Used for icons (or NerdFont)
    style_map = {
      ["Regular"] = "Regular",
      ["Semibold"] = "Regular",
      ["Bold"] = "Bold",
      ["Heavy"] = "Bold",
      ["Black"] = "Bold",
    },
  },
}
