local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local guns2 = clay:new()


function guns2:create(x,y,flipped)

   self:breathe("guns2",x,y,incantations.plans.guns2.emblems,747,361,747,361,1,0,flipped,true)

end


return guns2
