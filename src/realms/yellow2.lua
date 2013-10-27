local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local yellow = vellum:new()

local spear = require('golems.spear')


function yellow:enter()

   self.color = {255,255,0}

   self.golems = {}

   table.insert(self.golems, spear:new())
   spear:create(200,200)
   self.golems[1].malleable =
      function (self,x,y,key)
         if self.hover then
            yellow.depart("yellow3")
         end
      end

end


--yellow3
function yellow.depart(realm)

   mysticrealms:teleport(realm)

end

return yellow
