local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local violet = vellum:new()


function violet:enter()

   self.color = {255,0,0}

end

return violet
