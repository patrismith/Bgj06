local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local bluemouth = clay:new()


function bluemouth:create(x,y,flipped)

   self:breathe("bluemouth",x,y,incantations.plans.bluemouth.emblems,280,110,1680,110,6,.05,flipped,true)

end


function bluemouth:mortal(dt)

   --print(self.x,self.y,self.id,self.golembreadth,self.golemheight)
   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight


   if self.alive then
      self.counter = self.counter + dt
      if self.counter >= self.wait then
         self.counter = math.random(0,10) * .01
         self.currentemblem = math.random(1,6)
      end
   end

end

return bluemouth
