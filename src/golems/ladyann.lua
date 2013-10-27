local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local ladyann = clay:new()


function ladyann:create(x,y,flipped)

   self:breathe("ladyann",x,y,incantations.plans.ladyann.emblems,150,150,450,150,3,math.random(1,10) * 0.03,flipped,true)

end


return ladyann
