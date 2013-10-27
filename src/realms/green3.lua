local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local green = vellum:new()

local tcoin = require('golems.tcoin')
local ocoin = require('golems.ocoin')
local coinstack = require('golems.coinstack')
local wallet = require('golems.wallet')


function green:enter()

   self.color = {0,255,0}

   self.golems = {}

   for i=1,9 do
      table.insert(self.golems, wallet:new())
      table.insert(self.golems, tcoin:new())
   end

   for i=1,10 do
      table.insert(self.golems,ocoin:new())
      table.insert(self.golems,coinstack:new())
   end

   for i,v in ipairs(self.golems) do
      if i < 10 then
         v:create(math.random(-10,700),math.random(-10,500))
      elseif i < 15 then
         v:create(100,(i*400) + 750)
      elseif i < 20 then
         v:create(400,(i*400) + 900)
         v.malleable =
            function (self, x, y, key)
               if self.hover then
                  green.depart("green2")
               end
            end
      else
         v:create(200,(i*50) + 800)
         v.malleable =
            function (self, x, y, key)
               if self.hover then
                  green.depart("green4")
               end
            end

      end
   end


end


--green2
--green4
function green.depart(realm)

   mysticrealms:teleport(realm)

end

return green
