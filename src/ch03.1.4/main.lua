display.setStatusBar(display.HiddenStatusBar)

local function on_Timer(event)
  print("Corona is fun!")
end

timer.performWithDelay(1000, on_Timer, 1)
