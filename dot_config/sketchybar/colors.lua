return {
  -- Core colors
  black = 0xff1a1b26, -- background
  white = 0xffc0caf5,
  red = 0xfff7768e,
  green = 0xff9ece6a,
  blue = 0xff7aa2f7,
  yellow = 0xffe0af68,
  orange = 0xffff9e64,
  magenta = 0xffbb9af7,
  grey = 0xff565f89,
  teal = 0xff2ac3de,
  transparent = 0x00000000,

  -- Bar styling (with blur)
  bar = {
    bg = 0x991a1b26, -- semi-transparent for blur to show through
    border = 0xff24283b,
  },

  -- Popup styling
  popup = {
    bg = 0xcc1a1b26, -- more solid than bar, but still translucent
    border = 0xff565f89,
    card = 0xff24283b,
  },

  -- Spaces
  spaces = {
    active = 0xff3b4261,
    inactive = 0xff1f2335,
  },

  -- Extra backgrounds
  bg1 = 0xff1f2335,
  bg2 = 0xff24283b,

  -- Helper for alpha overlays
  with_alpha = function(color, alpha)
    if alpha > 1.0 or alpha < 0.0 then
      return color
    end
    return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
  end,
}
