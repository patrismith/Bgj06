local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local red = vellum:new()


function red:enter()

   self.color = {255,0,0}
   print('red summoned')

end

return red
