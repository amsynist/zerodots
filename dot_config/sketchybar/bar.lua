local colors = require("colors")
local settings = require("settings")

-- Equivalent to the --bar domain
sbar.bar({
  sticky = true,
  position = "top",
  height = settings.bar.height,
  margin = 15,
  color = colors.bar.bg,
  border_color = colors.bar.border,
  border_width = 0,
  padding_right = 10,
  padding_left = 10,
  y_offset = settings.y_offset,
  blur_radius = 30,  -- controls blur strength (higher = blurrier)
  corner_radius = 12, -- soft rounded corners for bar
})
