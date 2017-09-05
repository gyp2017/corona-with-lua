local a = 10
local b = 10

if a > b then
  print("a > b : "..tostring(a > b))
elseif a < b then
  print("a < b : "..tostring(a < b))
else
  print("a = b : "..tostring(a == b))
end

--[[
if ~ then
  A
elseif ~ then
  B
else
  C
end
]]

math.randomseed(os.time())
local rnd = math.random(1, 100)
if rnd % 2 == 0 then
  print(rnd..":짝수")
else
  print(rnd..":홀수")
end
