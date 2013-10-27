local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local guns = clay:new()


function guns:create(x,y,flipped)

   self:breathe("guns",x,y,incantations.plans.guns.emblems,728,171,728,171,1,0,flipped,true)

end


return guns
