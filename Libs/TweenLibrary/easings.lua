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
        return x^2
    end
end

--- func desc
---@param x number
function Easings.easeOutQuad(x)
    if type(x) == "number" then
        return 1 - (1 - x) * (1 - x)
    end
end

--- func desc
---@param x number
function Easings.easeInOutQuad(x)
    if type(x) == "number" then
        if x < 0.5 then
            return 2 * x^2
        else
            return 1 - math.pow(-2 * x + 2, 2) / 2
        end
    end
end

--- func desc
---@param x number
function Easings.easeInCubic(x)
    if type(x) == "number" then
        return x^3
    end
end

--- func desc
---@param x number
function Easings.easeOutCubic(x)
    if type(x) == "number" then
        return 1 - math.pow(1 - x, 3)
    end
end

--- func desc
---@param x number
function Easings.easeInOutCubic(x)
    if type(x) == "number" then
        if x < 0.5 then
            return 4 * x^3
        else
            return 1 - math.pow(-2 * x + 2, 3) / 2
        end
    end
end

--- func desc
---@param x number
function Easings.easeInQuart(x)
    if type(x) == "number" then
        return x^4
    end
end

--- func desc
---@param x number
function Easings.easeOutQuart(x)
    if type(x) == "number" then
        return 1 - math.pow(1 - x, 4)
    end
end

--- func desc
---@param x number
function Easings.easeInOutQuart(x)
    if type(x) == "number" then
        if x < 0.5 then
            return 8 * x^4
        else
            return 1 - math.pow(-2 * x + 2, 4) / 2
        end
    end
end

--- func desc
---@param x number
function Easings.easeInQuint(x)
    if type(x) == "number" then
        return x^5
    end
end

--- func desc
---@param x number
function Easings.easeOutQuint(x)
    if type(x) == "number" then
        return 1 - math.pow(1 - x, 5)
    end
end

--- func desc
---@param x number
function Easings.easeInOutQuint(x)
    if type(x) == "number" then
        if x < 0.5 then
            return 16 * x^5
        else
            return 1 - math.pow(-2 * x + 2, 5) / 2
        end
    end
end

--- func desc
---@param x number
function Easings.easeInExpo(x)
    if type(x) == "number" then
        if x == 0 then
            return 0
        else
            return math.pow(2, 10 * x - 10)
        end
    end
end

--- func desc
---@param x number
function Easings.easeOutExpo(x)
    if type(x) == "number" then
        if x == 1 then
            return 1
        else
            return 1 - math.pow(2, -10 * x)
        end
    end
end

--- func desc
---@param x number
function Easings.easeInOutExpo(x)
    if type(x) == "number" then
        if x == 0 then
            return 0
        elseif x == 1 then
            return 1 
        elseif x < 0.5 then
            return math.pow(2, 20 * x - 10) / 2
        else
            return (2 - math.pow(2, -20 * x + 10)) /2
        end
    end
end

--- func desc
---@param x number
function Easings.easeInCirc(x)
    if type(x) == "number" then
        return 1 - math.sqrt(1 - math.pow(x, 2))
    end
end