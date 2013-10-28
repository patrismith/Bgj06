local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local orange = vellum:new()

local littleastro = require('golems.littleastro')
local orangeplanet = require('golems.orangeplanet')
local bigastro = require('golems.bigastro')

function orange:enter()

   self.color = {255,127,0}

   self.golems = {}

   for i=1,5 do
      table.insert(self.golems, littleastro:new())
   end


   table.insert(self.golems, orangeplanet:new())
   table.insert(self.golems, bigastro:new())

   for i,v in ipairs(self.golems) do
      if v:name() == "littleastro" then
         v:create(math.random(400,800),math.random(300,600),false)
      elseif v:name() == "orangeplanet" then
         v:create()
         v.malleable =
            function (self, x, y, key)
               if self.hover then
                  orange.depart("orange2")
               end
            end
      elseif v:name() == "bigastro" then
         v:create()
         v.malleable =
            function (self, x, y, key)
               if self.hover then
                  orange.depart("orange3")
               end
            end
      end
   end

   self.golems[1].malleable =
      function (self,x,y,key)
         if self.hover then
            for i,v in ipairs(orange.golems) do
               if v:name() == "bigastro" then
                  v.alive = true
               end
            end
         end
      end

end

--orange2
--orange3
function orange.depart(realm)

   mysticrealms:teleport(realm)

end

return orange
