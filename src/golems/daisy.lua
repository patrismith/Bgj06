local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local daisy = clay:new()


function daisy:create(x,y,flipped)

   self:breathe("daisy",x,y,incantations.plans.daisy.emblems,70,70,280,70,4,math.random(1,10) * 0.03,flipped,true)

end


return daisy
