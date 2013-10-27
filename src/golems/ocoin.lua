local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local ocoin = clay:new()


function ocoin:create(x,y,flipped)

   self:breathe("ocoin",x,y,incantations.plans.ocoin.emblems,169,57,169,57,1,1,flipped,true)

end


function ocoin:mortal(dt)

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


return ocoin
