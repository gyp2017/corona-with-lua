display.setStatusBar(display.HiddenStatusBar)

local widget = require "widget"
local function tapBtn(event)
  -- print(event)
  for key, value in pairs(event) do
    print(key .. "=" .. tostring(value))
  end
end

local btn = widget.newButton({
  label="PUSH"
})
btn:addEventListener('tap', tapBtn)
