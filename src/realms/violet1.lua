local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local violet = vellum:new()

local boss = require('golems.boss')
local guns = require('golems.guns')
local guns2 = require('golems.guns2')


function violet:enter()

   self.color = {255,0,255}

   self.golems = {}

   table.insert(self.golems,boss:new())
   table.insert(self.golems,guns:new())
   table.insert(self.golems,guns2:new())
   self.golems[1]:create(320,100)
   self.golems[2]:create(10,10)
   self.golems[3]:create(10,30)


   self.golems[1].malleable =
      function(self,x,y,key)
         if self.hover then
            love.audio.stop()
            violet.depart("violet3")
         end
      end


   self.golems[2].malleable =
      function(self,x,y,key)
         if self.hover then
            love.audio.stop()
            violet.depart("violet3")
         end
      end


   self.golems[3].malleable =
      function(self,x,y,key)
         if self.hover then
           love.audio.stop()
           violet.depart("violet3")
         end
      end

end


--violet2 lose
--violet3 win
function violet.depart(realm)

   mysticrealms:teleport(realm)

end


return violet
