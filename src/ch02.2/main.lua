globalA = 10 -- global
local localB = 12 -- local

print(globalA, localB) -- 10 12

a = "Lua"
do
  print("1:"..a)
  local b = "Zua"
  c = "ActionScript"
end
print("2:"..a)
print("3:"..tostring(b))
print("4:"..c)
