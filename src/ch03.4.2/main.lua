local rect = display.newRect(150,150,100,100)
rect:setFillColor(1,1,0,1)
rect.strokeWidth = 8
rect:setStrokeColor(1,0,0,1)

local rect2 = display.newRoundedRect(350,350,100,100,0)
rect2:setFillColor(1,1,0,1)
rect2.strokeWidth = 8
rect2:setStrokeColor(1,0,0,1)
transition.to(rect2.path, {time=2000, radius=30})
