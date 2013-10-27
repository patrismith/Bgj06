local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local blue = vellum:new()


function blue:enter()

   self.color = {0,0,255}
   print('blue summoned')

end


--blue1
function blue.depart(realm)

   mysticrealms:teleport(realm)

end

return blue
