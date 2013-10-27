local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local violet = vellum:new()

local youlose = require('golems.youlose')


function violet:enter()

   self.color = {255,0,255}

   self.golems = {}

   table.insert(self.golems,youlose:new())
   self.golems[1]:create(0,0)

   self.golems[1].malleable =
      function(self,x,y,key)
         if self.hover then
            violet.depart("indigo1")
         end
      end
end

function violet.depart(realm)

   mysticrealms:teleport(realm)

end


return violet
