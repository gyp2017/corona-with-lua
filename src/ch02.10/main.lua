local tbl = {}
tbl[1] = 1
tbl["five"] = 5

print(tbl[1] + tbl["five"])

local function foo()
  print("Did you call me?")
end

local tbl = {a=3, b="String", c=foo, d=math}
print(tbl.c())
print(tbl.d.random())

local tbl = {"Apple","Banana","Cake","David"}
print(table.concat(tbl, ","))
print(table.concat(tbl, "-"))

local tbl1 = {1,2,3}
local tbl2 = {4,5,6}
print(table.concat(table.copy(tbl1, tbl2), ","))

local tbl = {"Lua", "is", "easy"}
print(tbl[3])
table.insert(tbl, 3, "very")
print(table.concat(tbl, " "))
print(tbl[4])

local tbl = {1,3,5,7,9}
table.remove(tbl, 2)
print(table.remove(tbl, 2))
print(table.concat(tbl, ","))

local tbl = {3,1,7,5,9}
table.sort(tbl)
print(table.concat(tbl, ","))

local function compare(a, b)
  return a > b
end

local tbl = {3,1,7,9,5}
table.sort(tbl, compare)
print(table.concat(tbl, ","))
