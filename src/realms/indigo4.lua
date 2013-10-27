local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local indigo = vellum:new()


function indigo:enter()

   self.color = {0,0,255}
   print('indigo summoned')

end


--indigo1
--indigo2
--indigo3
--violet1
function indigo.depart(realm)

   mysticrealms:teleport(realm)

end

return indigo
