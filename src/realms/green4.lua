local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local green = vellum:new()

local planetcoin = require('golems.planetcoin')

function green:enter()

   self.color = {0,255,0}

   self.golems = {}

   table.insert(self.golems, planetcoin:new())

   self.golems[1]:create(500,300)

   self.golems[1].malleable =
      function (self, x, y, key)
         if self.hover then
            green.depart("blue1")
         end
      end


end


--yellow2
--blue1
function green.depart(realm)

   mysticrealms:teleport(realm)

end

return green
