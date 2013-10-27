local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local planetcoin = clay:new()


function planetcoin:create(x,y,flipped)

   self:breathe("planetcoin",x,y,incantations.plans.planetcoin.emblems,203,191,3654,191,18,0.03,flipped,true)

end


return planetcoin
