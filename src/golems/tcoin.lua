local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local tcoin = clay:new()


function tcoin:create(x,y,flipped)

   self:breathe("tcoin",x,y,incantations.plans.tcoin.emblems,102,93,102,93,1,1,flipped,true)

end


return tcoin
