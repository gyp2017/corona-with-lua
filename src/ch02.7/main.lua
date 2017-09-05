function add(a, b)
  return a + b
end
print(add(3, 2)) -- 5

-- 로컬 함수
local function foo()
end

-- 변수에 할당
local foo = function()
end

local function get()
  return 1, "some", 0.5
end
local a, b, c = get()
print(a, b, c) -- 1 "some" 0.5

--[[ Error!
foo()
local function foo()
end
]]

local function foo()
end
foo()

local function add(n1, n2)
  if n1 == nil then
    n1 = 0
  end

  n2 = n2 or 0

  n1 = tonumber(n1)
  n2 = tonumber(n2)
  return n1 + n2
end

local a = 1
local b = 2
print(add(a, b))
local c = 3
print(add(b, c))
print(add(a, c))
