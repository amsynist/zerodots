local settings = require("settings")
local colors = require("colors")

-- Helper to get DST-aware time for a given timezone
local function get_tz_time_str(tz, fmt)
  local handle = io.popen("TZ=" .. tz .. " date +'" .. fmt .. "'")
  local result = handle:read("*a")
  handle:close()
  return result:gsub("%s+$", "")
end

-- CDT (left side in group)
local time_cdt = sbar.add("item", "time_cdt", {
  label = {
    color = colors.blue,
    padding_left = 12,
    padding_right = 12,
    align = "center",
    font = { family = settings.font.numbers },
  },
  position = "center",
  update_freq = 30,
})

-- IST (center main)
local time_ist = sbar.add("item", "time_ist", {
  label = {
    color = colors.red,
    padding_left = 12,
    padding_right = 12,
    align = "center",
    font = { family = settings.font.numbers },
  },
  position = "center",
  update_freq = 30,
})

-- PDT (right side in group)
local time_pdt = sbar.add("item", "time_pdt", {
  label = {
    color = colors.yellow,
    padding_left = 12,
    padding_right = 12,
    align = "center",
    font = { family = settings.font.numbers },
  },
  position = "center",
  update_freq = 30,
})

-- Bracket groups them together in center
sbar.add("bracket", "datetime", { time_cdt.name, time_ist.name, time_pdt.name }, {
  background = { color = colors.transparent },
  padding_right = 0,
})

-- Padding so bracket centers nicely
sbar.add("item", { position = "center", width = 2 })

-- Updates
time_cdt:subscribe({ "forced", "routine", "system_woke" }, function(env)
  local cdt_time = get_tz_time_str("America/Chicago", "%I:%M %p %Z")
  time_cdt:set({ label = cdt_time .. " |" })
end)

time_ist:subscribe({ "forced", "routine", "system_woke" }, function(env)
  local ist_date = os.date("%b %a %d")
  local ist_time = os.date("%I:%M %p")
  time_ist:set({ label = ist_date .. " " .. ist_time .. " IST |" })
end)

time_pdt:subscribe({ "forced", "routine", "system_woke" }, function(env)
  local pdt_time = get_tz_time_str("America/Los_Angeles", "%I:%M %p %Z")
  time_pdt:set({ label = pdt_time })
end)
