local g = display.newGroup()
print(g.parent)
print(display.getCurrentStage())
g.x, g.y = 100, 100

local rect = display.newRect(0,0,100,100)
rect.anchorX, rect.anchorY = 0, 0
rect:setFillColor(1,1,0,1)
g:insert(rect)
print(rect.x, rect.y)
