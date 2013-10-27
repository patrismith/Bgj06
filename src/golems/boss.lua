local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local boss = clay:new()


function boss:create(x,y,flipped)

   self:breathe("boss",x,y,incantations.plans.boss.emblems,300,354,300,354,1,0,flipped,true)

end


return boss
