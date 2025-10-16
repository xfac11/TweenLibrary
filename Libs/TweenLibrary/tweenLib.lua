local Object = require "classic"
local TweenLib = Object:extend()


function TweenLib:new()
    self.tweenTable = {}
    self.easingFunctions = {
        easeInSine = function(x) return 1 - math.cos((x * math.pi) / 2) end,
        easeInQuad = function(x)
                        return x * x
                    end
    }
end

function TweenLib:update(dt)
end

function TweenLib:load()
end

function TweenLib:create1DTween()
    
end

function TweenLib:create2DTween()

end

--- Only for debug drawing. Displays all paths different tweens will take.
function TweenLib:draw()
end

