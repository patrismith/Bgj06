local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local littleastro = clay:new()


function littleastro:create(x,y,flipped)

   self:breathe("littleastro",x,y,incantations.plans.littleastro.emblems,40,40,incantations.plans.littleastro.breadth,incantations.plans.littleastro.height,2,math.random(0,10) * .01,flipped, true)

end

function littleastro:name()

   return "littleastro"

end


return littleastro
