local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local blue = vellum:new()

local blueeye = require('golems.blueeye')
local bluemouth = require('golems.bluemouth')

function blue:enter()

   self.color = {0,0,255}

   self.golems = {}

   for i=1,2 do
      table.insert(self.golems,blueeye:new())
   end

   table.insert(self.golems,bluemouth:new())

   self.golems[1]:create(200,80)
   self.golems[2]:create(500,80)
   self.golems[3]:create(300,400)
   self.golems[3].malleable =
      function (self, x, y, key)
         if self.hover then
            blue.depart("blue2")
         end
      end


end


--blue2
function blue.depart(realm)

   mysticrealms:teleport(realm)

end

return blue
