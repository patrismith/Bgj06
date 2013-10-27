local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local cutedollar = clay:new()


function cutedollar:create(x,y,flipped)

   self:breathe("cutedollar",x,y,incantations.plans.cutedollar.emblems,43,109,43,109,1,1,flipped,true)

end


function cutedollar:mortal(dt)

   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight

   if self.alive then
      self.counter = self.counter + dt
      self.y = self.y - math.random(1,10)
      if self.y < -300 then
         self.y = 600
      end
      if self.counter >= self.wait then
         self.counter = 0
      end
   end

end


return cutedollar
