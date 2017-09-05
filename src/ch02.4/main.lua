-- 1) 비교 연산자
print(2 > 1) -- true
print(2 < 1) -- false
print(2 >= 1) -- true
print(2 <= 1) -- false
print(2 == 1) -- false
print(2 ~= 1) -- true

-- 2) 산술 연산자
print(4 + 2) -- 6
print(4 - 2) -- 2
print(4 * 2) -- 8
print(4 / 2) -- 2
print(4 % 2) -- 0
print(4 ^ 2) -- 16

-- 3) 논리 연산자
local a = true
local b = false
print(a and b) -- false
print(a or b) -- true
print(not a) -- false
print(not b) -- true

-- 4) 기타 연산자
local lua = "Lua"
local corona = "Corona"
print(lua .. " and " .. corona)
print(#lua)
print(#corona)

-- 5) 연산자 우선순위
--[[
^
not #
* / %
+ -
..
> < >= <= ~= ==
and
or
]]
