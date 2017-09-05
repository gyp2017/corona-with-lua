print(string.byte("A")) -- 65
print(string.byte("C")) -- 67

print(string.char(69)) -- E
print(string.char(75)) -- K

print(string.find("Hello Corona World", "Corona")) -- 7 12

local str = "1-2-3-4-5"
local result = ""
for k, v in str.gmatch(str, "%d") do
  result = result..k
end
print(result) -- 12345

local str = "Hello, Lua"
str = string.gsub(str, "Lua", "Corona SDK")
print(str) -- Hello, Corona SDK

local str = "Hello, Lua and Lua, Lua"
str = string.gsub(str, "Lua", "Corona SDK")
print(str) -- Hello, Corona SDK and Corona SDK, Corona SDK

local str = "Hello, Lua and Lua, Lua"
str = string.gsub(str, "Lua", "Corona SDK", 1)
print(str) -- Hello, Corona SDK and Corona SDK, Lua

local str = "Hello, Lua and Lua, Lua"
str = string.upper(str)
print(str) -- HELLO, LUA AND LUA, LUA
