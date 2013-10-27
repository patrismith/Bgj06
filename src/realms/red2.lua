local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local red = vellum:new()

local lips = require('golems.lips')


function red:enter()

   self.color = {255,0,0}

   self.golems = {}

   for i=1,1 do
      table.insert(self.golems, lips:new())
   end

   for i,v in ipairs(self.golems) do
      --put this in the center
      lips:create(200,200)
   end

   self.golems[1].malleable = function (self, x, y, key) if self.hover then red.depart("red1") end end

end


-- red1
function red.depart(realm)

   mysticrealms:teleport(realm)

end


return red
