local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local green = vellum:new()

local bigdollar = require('golems.bigdollar')
local tinydollar = require('golems.tinydollar')

function green:enter()

   love.audio.play(incantations.song03)
   self.color = {0,255,0}

   self.golems = {}

   for i=1,15 do
      table.insert(self.golems, bigdollar:new())
   end

   for i=1,5 do
      table.insert(self.golems,tinydollar:new())
   end

   for i,v in ipairs(self.golems) do
      if i < 6 then
         v:create(0,(i*400) + 600)
      elseif i < 11 then
         v:create(700,(i*400) + 750)
      elseif i < 16 then
         v:create(300,(i*400) + 900)
         v.malleable =
            function (self, x, y, key)
               if self.hover then
                  green.depart("green3")
               end
            end
      else
         v:create(500,(i*50) + 1000)
         v.malleable =
            function (self, x, y, key)
               if self.hover then
                  green.depart("green2")
               end
            end

      end
   end

end


--green2
--green3
function green.depart(realm)

   mysticrealms:teleport(realm)

end

return green
