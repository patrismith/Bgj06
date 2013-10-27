local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local youlose = clay:new()

function youlose:create(x,y,flipped)

   self:breathe("youlose",x,y,incantations.plans.youlose.emblems,633,552,1900,552,3,0.05,flipped,true)

end


return youlose
