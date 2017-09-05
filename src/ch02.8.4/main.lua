local ControlMyCar = require "ControlMyCar"

local car = ...

ControlMyCar.connect(car)

ControlMyCar.lockDoors(false)

ControlMyCar.ignition(true)

ControlMyCar.move(true, 40)
