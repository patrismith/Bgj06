local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local orange = vellum:new()

local littleastro = require('golems.littleastro')
local orangeplanet = require('golems.orangeplanet')

function orange:enter()

   self.color = {255,127,0}

   self.golems = {}

   for i=1,1 do
      table.insert(self.golems, littleastro:new())
   end


   for i,v in ipairs(self.golems) do
      if v:name() == "littleastro" then
         v:create(math.random(1,800),math.random(1,600),false)
      else
         v:create()
      end
   end

   self.golems[1].malleable =
      function (self,x,y,key)
         if self.hover then
            orange.depart("orange4")
         end
      end

end


--orange4
function orange.depart(realm)

   mysticrealms:teleport(realm)

end

return orange
