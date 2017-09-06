local composer = require("composer")
local scene = composer.newScene()

-- 씬 생성 이벤트
function scene:create(event)

  local sceneGroup = self.view
  -- 씬 초기화
  -- UI 생성, 이벤트 리스너 추가
end

-- 씬이 보여질 때 호출
function scene:show(event)
  local sceneGroup = self.view
  local phase = event.phase
  if (phase == "will") then
    -- 화면에 보여지기 직전에 실행
  elseif (phase == "did") then
    -- 화면에 나타남과 동시에 실행
    -- 타이머, 음악, 애니메이션을 재시작합니다.
  end
end

-- 씬이 감춰질 때 호출
function scene:hide(event)
  local sceneGroup = self.view
  local phase = event.phase
  if (phase == "will") then
    -- 화면에서 사라지기 직전에 실행
    -- 타이머, 음악, 애니메이션을 일시정지합니다.
  elseif (phase == "did") then
    -- 화면에서 사라짐과 동시에 실행
  end
end

-- 씬이 제거될 때 호출
function scene:destroy(event)
  local sceneGroup = self.view
  -- 제거되기 직전에 실행
end

scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)
return scene
