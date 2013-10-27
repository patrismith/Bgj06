local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local bigastro = clay:new()


function bigastro:create()

   self:breathe("bigastro",0,600,incantations.plans.bigastro.emblems,618,503,incantations.plans.bigastro.breadth,incantations.plans.bigastro.height,4,0.02,flipped, false)

end

function bigastro:name()

   return "bigastro"

end


function bigastro:mortal(dt)

   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight

   if self.alive then
      if self.y >= 100 then
         self.y = self.y - 1
      end
      self.counter = self.counter + dt
      if self.counter >= self.wait then
         self.counter = 0
         self.currentemblem = self.currentemblem + 1
         if self.currentemblem >= #self.quads then
            if not self.die then
               self.currentemblem = 1
            else
               self.alive = false
            end
         end
      end
   end

end

return bigastro
