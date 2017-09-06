local composer = require("composer")
local scene = composer.newScene()

--
function scene:create(event)

  local sceneGroup = self.view

  -- 
  display.newText(sceneGroup, "Intro", display.contentCenterX,
    display.contentCenterY, 0, 0, native.systemFont, 50)

  local function on_timer(e)
    local currentScene = composer.getSceneName("current")
    composer.removeScene(currentScene)

    composer.gotoScene("Game", "slideLeft", 800)
  end

  timer.performWithDelay(2000, on_timer, 1)
end

scene:addEventListener("create", scene)
return scene
