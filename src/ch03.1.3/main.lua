display.setStatusBar(display.HiddenStatusBar)

print(display.fps)

local angle = 0
local img = display.newImage("Icon.png", 0, 0)
img.x, img.y = display.contentCenterX, display.contentCenterY
local function on_EnterFrame(event)
  angle = angle + 0.1
  img.x = img.x + (10 * math.cos(angle))
  img.y = img.y + (10 * math.cos(angle))
end

Runtime:addEventListener("enterFrame", on_EnterFrame)
