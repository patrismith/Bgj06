local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local blue = vellum:new()

local blueplanet = require('golems.blueplanet')

function blue:enter()

   self.color = {0,0,255}

   self.golems = {}

   table.insert(self.golems,blueplanet:new())
   self.golems[1]:create(0,0)
   self.golems[1].action =
      function (self)
         blue.depart("indigo1")
      end


end


--blue4
--indigo1
function blue.depart(realm)

   mysticrealms:teleport(realm)

end

return blue
