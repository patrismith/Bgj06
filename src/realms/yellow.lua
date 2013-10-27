local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local yellow1 = vellum:new()


function yellow1:enter()

   self.color = {255,255,0}
   print('yellow1 summoned')

end


--yellow2
--yellow3
function yellow1.depart(realm)

   mysticrealms:teleport(realm)

end

return yellow1
