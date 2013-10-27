local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local indigo = vellum:new()

local tulip = require('golems.tulip')
local daisy = require('golems.daisy')
local ladyann = require('golems.ladyann')
local poppy = require('golems.poppy')
local clover = require('golems.clover')


function indigo:enter()

   self.color = {75,0,130}

   self.golems = {}

   for i=1,50 do
      local which = math.random(1,5)
      if which == 1 then
         table.insert(self.golems, tulip:new())
      elseif which == 2 then
         table.insert(self.golems, daisy:new())
      elseif which == 3 then
         table.insert(self.golems, ladyann:new())
      elseif which == 4 then
         table.insert(self.golems, poppy:new())
      else
         table.insert(self.golems, clover:new())
      end
   end

   for i,v in ipairs(self.golems) do
      v:create(math.random(10,700),math.random(10,500))
   end

   self.golems[1].malleable =
      function(self,x,y,key)
         if self.hover then
            indigo.depart("violet1")
         end
      end


   self.golems[2].malleable =
      function(self,x,y,key)
         if self.hover then
            indigo.depart("violet1")
         end
      end


   self.golems[3].malleable =
      function(self,x,y,key)
         if self.hover then
            indigo.depart("violet1")
         end
      end


   self.golems[4].malleable =
      function(self,x,y,key)
         if self.hover then
            indigo.depart("indigo1")
         end
      end


   self.golems[5].malleable =
      function(self,x,y,key)
         if self.hover then
            indigo.depart("indigo1")
         end
      end
end



--indigo2
--indigo3
--indigo4
function indigo.depart(realm)

   mysticrealms:teleport(realm)

end

return indigo
