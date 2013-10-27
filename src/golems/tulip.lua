local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local tulip = clay:new()


function tulip:create(x,y,flipped)

   self:breathe("tulip",x,y,incantations.plans.tulip.emblems,140,200,420,200,3,math.random(1,10) * 0.03,flipped,true)

end


return tulip
