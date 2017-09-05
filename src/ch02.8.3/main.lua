local date = os.date("*t")
print(date.year, date.month, date.day)
print(date.hour, date.min, date.sec)

local date = os.date("%Y-%m-%d %H:%M:%S", os.time())
print(date)

local t = os.time()
local function on_Timer(e)
  print(os.time() - t)
end
timer.performWithDelay(2000, on_Timer, 1)
