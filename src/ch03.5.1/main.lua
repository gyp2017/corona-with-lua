local widget = require "widget"

local function on_ButtonEvent(event)
  if event.phase == "ended" then
    print("버튼 터치 완료")
  end
end

local button = widget.newButton({
  left=50,
  top=50,
  id="button0",
  label="Button",
  onEvent=on_ButtonEvent
})

local button1 = widget.newButton({
  left=50,
  top=150,
  id="button1",
  label="Button",
  labelColor={default={1,1,1,1}, over={0,0,0,0.5,1}},
  defaultFile="button_up.png",
  overFile="button_dn.png",
  onEvent=on_ButtonEvent
})
