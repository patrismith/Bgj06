local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local clover = clay:new()


function clover:create(x,y,flipped)

   self:breathe("clover",x,y,incantations.plans.clover.emblems,180,140,540,140,3,math.random(1,10) * 0.03,flipped,true)

end


return clover
