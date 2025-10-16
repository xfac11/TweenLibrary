local Object = require "classic"
local Easings = Object:extend()

function Easings:new() 
end

--- func desc
---@param x number
function Easings.easeInSine(x)
    if type(x) == "number" then
        return 1 - math.cos((x * math.pi) / 2)
    end
end

--- func desc
---@param x number
function Easings.easeOutSine(x)
    if type(x) == "number" then
        return math.sin((x * math.pi) / 2)
    end
end

--- func desc
---@param x number
function Easings.easeInOutSine(x)
    if type(x) == "number" then
        return -(math.cos(math.pi * x) - 1) / 2
    end
end

--- func desc
---@param x number
function Easings.easeInQuad(x)
    if type(x) == "number" then
        return x * x
    end
end

--- func desc
---@param x number
function Easings.easeOutQuad(x)
    if type(x) == "number" then
        return 1 - (1 - x) * (1 - x)
    end
end



