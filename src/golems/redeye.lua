local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local redeye = clay:new()


function redeye:create(x,y,flipped)

   self:breathe("redeye",x,y,incantations.plans.redeye.emblems,200,80,600,80,3,math.random(1,10) * 0.01,math.random(0,1) == 0,true)

end


function redeye:mortal(dt)

   --print(self.x,self.y,self.id,self.golembreadth,self.golemheight)
   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight

   if self.alive then
      self.counter = self.counter + dt
      if self.counter >= self.wait then
         self.counter = 0
         self.currentemblem = self.currentemblem + 1
         if self.currentemblem > #self.quads then
            if not self.die then
               self.currentemblem = 1
            else
               self.alive = false
            end
         end
      end
   end

end



return redeye
