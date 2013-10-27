local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local greenplanet = clay:new()


function greenplanet:create(x,y,flipped)

   self:breathe("greenplanet",x,y,incantations.plans.greenplanet.emblems,999,999,999,999,9,math.random(5,10) * .01,flipped,false)

end


return greenplanet
