display.setStatusBar(display.HiddenStatusBar)

local img = display.newImage("Icon.png", 100, 100)
local function on_Complete(event)
  print("움직임이 완료했습니다.")
end
transition.to(img, {time=1000,x=400,y=400,xScale=2,yScale=2,
    transition=easing.outInExpo,onComplete=on_Complete})
