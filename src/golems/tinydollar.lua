local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local tinydollar = clay:new()


function tinydollar:create(x,y,flipped)

   self:breathe("tinydollar",x,y,incantations.plans.tinydollar.emblems,20,35,20,35,1,2,flipped,true)

end


function tinydollar:mortal(dt)

   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight

   if self.alive then
      self.counter = self.counter + dt
      self.y = self.y - math.random(1,5)
      if self.y < -30 then
         self.y = 600
      end
      if self.counter >= self.wait then
         self.counter = 0
      end
   end

end


return tinydollar
