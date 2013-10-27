local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local poppy = clay:new()


function poppy:create(x,y,flipped)

   self:breathe("poppy",x,y,incantations.plans.poppy.emblems,160,150,480,150,3,math.random(1,10) * 0.03,flipped,true)

end


return poppy
