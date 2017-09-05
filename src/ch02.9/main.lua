local _b = true

local function fn1()
  while _b do
    print("OK")
    coroutine.yield()
  end
  print("END")
end

local function fn2()
  _b = false
end

local co1 = coroutine.create(fn1)
local co2 = coroutine.create(fn2)

coroutine.resume(co1)
coroutine.resume(co2)
coroutine.resume(co1)


local function fn()
  print(1)
  coroutine.yield()
  print(2)
  coroutine.yield()
  print(3)
end

local co = coroutine.create(fn)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
