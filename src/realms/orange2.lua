local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local orange = vellum:new()

local littleastro = require('golems.littleastro')
local spaceship = require('golems.spaceship')

function orange:enter()

   self.color = {255,127,0}

   self.golems = {}

   for i=1,10 do
      table.insert(self.golems, littleastro:new())
   end


   table.insert(self.golems, spaceship:new())


   for i,v in ipairs(self.golems) do
      if v.name then
         if v:name() == "littleastro" then
            v:create(math.random(1,800),math.random(1,600),false)
         end
      else
         v:create(400,400)
         v.action1 = function (self, realm) orange.depart("orange1") end
         v.action2 = function (self, realm) orange.depart("red1") end
      end
   end

end

--red1
--orange1
function orange.depart(realm)

   mysticrealms:teleport(realm)

end

return orange
