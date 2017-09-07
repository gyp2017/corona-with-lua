display.newImage(display.getCurrentStage(), "Icon.png", 100, 100, true)

display.newImage("Icon.png", 200, 200)

local function networkListener(event)
  if event.isError then
    print("네트워크 에러")
  else
    local image = event.target
    image.x, image.y = 300, 500

    image.path.x1 = 180
    image.path.x4 = -180
  end
end

display.loadRemoteImage(
  "https://avatars0.githubusercontent.com/u/3348211?v=4&s=460",
  "GET",
  networkListener,
  "Corona.png",
  system.TemporaryDirectory
)
