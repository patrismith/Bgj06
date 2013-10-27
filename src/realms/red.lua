local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local red = vellum:new()

local highheel = require('golems.highheel')


function red:enter()

   self.color = {255,0,0}
   print('red summoned')

   self.golems = {}

   for i=1,1 do
      table.insert(self.golems, highheel:new())
   end

   for i,v in ipairs(self.golems) do
      v:create(math.random(1,700),math.random(1,500),math.random(0,1) == 0)
   end

   self.golems[1].malleable = function (self, x, y, key) if self.hover then red.depart() end end

end


function red.depart()

   mysticrealms:teleport("orange")

end


return red
