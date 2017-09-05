for i = 1, 10, 1 do
  print(i)
end

print("------")

for i = 1, 12, 3 do
  print(i)
end

print("------")

for i = 10, 1, -1 do
  print(i)
end

print("------")

local i = 1
while i <= 5 do
  print(i)
  i = i + 1
end

print("------")

local a = true
while a == true do
  print("CONTINUE")
  a = false
end
print("END")

print("------")

local b = true
repeat
  print("CONTINUE")
until b == true
print("END")
