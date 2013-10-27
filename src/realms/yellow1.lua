local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local yellow = vellum:new()

local seacreatures = require('golems.seacreatures')
local redeye = require('golems.redeye')

function yellow:enter()

   love.audio.play(incantations.song04)
   self.color = {255,255,0}

   self.golems = {}

   table.insert(self.golems, seacreatures:new())
   seacreatures:create(200,200)
   self.golems[1].malleable =
      function (self,x,y,key)
         if self.hover then
            yellow.depart("yellow2")
         end
      end

   for i=1,7 do
      table.insert(self.golems, redeye:new())
   end

   for i=2,8 do
      self.golems[i]:create(math.random(-100,400),math.random(400,700))
   end

   self.golems[2].malleable = function (self,x,y,key) if self.hover then yellow.depart("yellow3") end end

end


--yellow2
--yellow3
function yellow.depart(realm)

   mysticrealms:teleport(realm)

end

return yellow
