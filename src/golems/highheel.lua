local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local highheel = clay:new()


function highheel:create(x,y,flipped)

   self:breathe("highheel",x,y,incantations.plans.highheel.emblems,270,90,540,90,2,math.random(5,10) * .01,flipped,true)

end


return highheel
