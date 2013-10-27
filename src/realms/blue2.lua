local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local blue = vellum:new()

local faceindoor = require('golems.faceindoor')

function blue:enter()

   self.color = {0,0,255}

   self.golems = {}

   for i=1,10 do
      table.insert(self.golems, faceindoor:new())
   end

   for i,v in ipairs(self.golems) do
      v:create(math.random(0,700),math.random(0,500))
   end

   self.golems[1].malleable =
      function (self, x, y, key)
         if self.hover then
            blue.depart("blue3")
         end
      end

end


--blue3
function blue.depart(realm)

   mysticrealms:teleport(realm)

end

return blue
