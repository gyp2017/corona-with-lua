local Class = {}

Class.car = nil

Class.connect = function(car)
  Class.car = car
  print("connect")
end

Class.lockDoors = function(isLock)
  print("lockDoors "..tostring(isLock))
end

Class.ignition = function(isOn)
  print("ignition "..tostring(isOn))
end

Class.move = function(isForwar, speed)
  print("move "..tostring(isForwar)..", speed "..speed)
end

Class.handling = function(isLeft, degree)
end

return Class
