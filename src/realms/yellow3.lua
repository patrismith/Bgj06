local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local yellow = vellum:new()

local dolphin = require('golems.dolphin')


function yellow:enter()

   self.power = 0
   self.color = {255,255,0}

   self.golems = {}

   for i = 1,10 do
      table.insert(self.golems, dolphin:new())
   end

   for i,v in ipairs(self.golems) do
      v:create(math.random(-300,700),math.random(-100,500))

      v.malleable =
         function (self,x,y,key)
            if self.hover then
               yellow.power = yellow.power + 1
               if yellow.power >= 5 then
                  yellow.depart("green1")
               end
            end
         end
   end

end


--yellow1
--yellow2
--yellow4
--green1
function yellow.depart(realm)

   mysticrealms:teleport(realm)

end

return yellow
