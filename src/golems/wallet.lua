local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local wallet = clay:new()


function wallet:create(x,y,flipped)

   self:breathe("wallet",x,y,incantations.plans.wallet.emblems,204,164,204,164,1,1,flipped,true)

end


return wallet
