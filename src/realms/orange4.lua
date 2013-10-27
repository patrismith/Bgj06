local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local orange = vellum:new()

local littleastro = require('golems.littleastro')
local orangeplanet = require('golems.orangeplanet')

function orange:enter()

   self.color = {255,127,0}

   self.golems = {}

   for i=1,10 do
      table.insert(self.golems, littleastro:new())
   end


   table.insert(self.golems, orangeplanet:new())


   for i,v in ipairs(self.golems) do
      if v:name() == "littleastro" then
         v:create(math.random(1,800),math.random(1,600),false)
      elseif v:name() == "orangeplanet" then
         v:create()
         v.ok = true
         v.action =
            function (self)
               orange.depart("yellow1")
            end

      end
   end

   self.golems[1].malleable =
      function(self,x,y,key)
         if self.hover then
            orange.depart("orange3")
         end
      end

end

--orange3
--yellow1
function orange.depart(realm)

   love.audio.stop()
   mysticrealms:teleport(realm)

end

return orange
