local Object = require "classic"
local Tween = Object:extend()

--- A tween changes the controllTables x and y value from start to end with an easing function and linear interpolation.
---@param : any
function Tween:new()
    self.x = 0
    self.y = 0
    self.startX = 0
    self.startY = 0
    self.endX = 0
    self.endY = 0
    self.secondsToComplete = 1
    self.easingFunction = function () end
    self.controllTable = nil
    self.startTable = nil
    self.endTable = nil
end

function Tween:setStart(x, y)
    self.startX = x
    self.startY = y
    return self
end

function Tween:setEnd(x, y)
    return self
end

function Tween:setSecondsToComplete(seconds)
    return self
end

function Tween:setEasing(easing)
    return self
end

--- The table must have two variables called x and y which should be used as floating point values
---@param controllTable table
function Tween:setControlledTable(controllTable)
    return self
end
--- This table has the same requirements as the controllTable as it has to have a x and y variable that is used as a flaoting point value.
--- If this is set it will use this table as startX and startY when the tween starts animating.
---@param startTable table
function Tween:setStartTable(startTable)
    return self
end

--- This table has the same requirements  as the controllTable as it has to have an x and y variable that is used as a floating point value.
--- If this is set it will use this table as endX and endY when the tween starts animating.
---@param endTable any
function Tween:setEndTable(endTable)
    return self
end