local txt = display.newText("코로나 SDK 텍스트",0,100,native.systemFont,40)
txt.anchorX, txt.anchorY = 0, 0
txt:setFillColor(1,1,0,1)

local options2 = {
  text="코로나 SDK 텍스트",
  x=0,
  y=200,
  font=native.systemFontBold,
  fontSize=40
}
local txt2 = display.newText(options2)
txt2.anchorX, txt2.anchorY = 0, 0
txt2:setFillColor(1,0,0,1)

local options3 = {
  text="코로나 SDK 텍스트",
  x=0,
  y=300,
  width=220,
  font=native.systemFontBold,
  fontSize=40,
  align="right"
}
local txt3 = display.newText(options3)
txt3.anchorX, txt3.anchorY = 0, 0
txt3:setFillColor(1,0,1,1)
