local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local coinstack = clay:new()


function coinstack:create(x,y,flipped)

   self:breathe("coinstack",x,y,incantations.plans.coinstack.emblems,73,132,73,132,1,1,flipped,true)

end


function coinstack:mortal(dt)

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


return coinstack
