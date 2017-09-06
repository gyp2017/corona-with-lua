---------------------------------
-- 기본 세팅
-- __statusBarHeight__ : 상단 StatusBar의 높이
-- __appContentWidth__ : App의 너비
-- __appContentHeight__ : App의 높이
-- 앵커포인트는 좌상단 
---------------------------------

-- 안드로이드 풀 스크린 모드 여부
local isAndroidFullScreen = true

-- 이 함수가 시작점입니다. 나머지는 신경쓰지 마세요. (-:
local function startApp()
	require("CommonSettings")
	
	local composer = require "composer"
	composer.gotoScene("MainSceneStarter")
end

--=======================================================--
local function on_SystemEvent(e)
	local _type = e.type
	if _type == "applicationStart" then -- 앱이 시작될 때
		
		local isResized = false -- 리사이즈 함수 실행 여부
		
		local function onResized(e1)
			Runtime:removeEventListener("resize", onResized)
			isResized = true

			startApp()
		end
		
		--======== 안드로이드 풀 스크린 적용(수정 불필요) Begin ========--
		if system.getInfo("environment") == "simulator" or string.lower(system.getInfo("platformName")) ~= "android" or isAndroidFullScreen == false then
			onResized(nil)
		else -- 안드로이드이면서 풀 스크린 모드일 경우
			Runtime:addEventListener("resize", onResized)
			native.setProperty( "androidSystemUiVisibility", "immersiveSticky" )
			
			-- 소프트키 바가 없는 경우
			local function on_Timer(e2)
				if not isResized then onResized(nil) end
			end
			timer.performWithDelay(200, on_Timer, 1)
		end
		--======== 안드로이드 풀 스크린 적용(수정 불필요) End ========--
		
	elseif _type == "applicationExit" then -- 앱이 완전히 종료될 때
	elseif _type == "applicationSuspend" then -- 전화를 받거나 홈 버튼 등을 눌러서 앱을 빠져나갈 때
	elseif _type == "applicationResume" then -- Suspend 후 다시 돌아왔을 때
	end
end
Runtime:addEventListener("system", on_SystemEvent)
--=======================================================--
