local vertices = {0,0,100,0,100,100,0,100}
local rect = display.newPolygon(150,150,vertices)
rect:setFillColor(1,1,0,1)

local vertices2 = {0,0, 30,50, 100,50, 40,95, 80,170, 0,130,
  -80,170, -40,95, -100,50, -30,50}
local star = display.newPolygon(350,350,vertices2)
star:setFillColor(0,1,1,1)
