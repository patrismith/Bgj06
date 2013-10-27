local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local yellow = vellum:new()


function yellow:enter()

   self.color = {255,255,0}
   print('yellow summoned')

end


--yellow3
function yellow.depart(realm)

   mysticrealms:teleport(realm)

end

return yellow
