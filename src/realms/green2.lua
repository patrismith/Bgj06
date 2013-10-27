local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local green = vellum:new()

local tinydollar = require('golems.tinydollar')
local cutedollar = require('golems.cutedollar')

function green:enter()

   self.color = {0,255,0}

   self.golems = {}

   for i=1,30 do
      table.insert(self.golems, tinydollar:new())
   end

   for i=1,10 do
      table.insert(self.golems, cutedollar:new())
   end

   for i=1,10 do
      table.insert(self.golems,cutedollar:new())
   end

   for i,v in ipairs(self.golems) do
      if i < 6 then
         v:create(500, i*100 + 30)
      elseif i < 11 then
         v:create(20,(i*400) + 100)
         v.malleable =
            function (self, x, y, key)
               if self.hover then
                  green.depart("yellow2")
               end
            end
      elseif i < 16 then
         v:create(200,(i*200) + 90)
      elseif i < 25 then
         v:create(i*50+100, 40)
      else
         v:create(i*10+50, 70)
      end
   end


end


--yellow4
function green.depart(realm)

   mysticrealms:teleport(realm)

end

return green
