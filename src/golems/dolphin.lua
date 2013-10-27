local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local dolphin = clay:new()


function dolphin:create(x,y,flipped)

   self:breathe("dolphin",x,y,incantations.plans.dolphin.emblems,440,220,3520,220,7,math.random(1,10) * 0.05,flipped,true)

end


function dolphin:mortal(dt)

   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight

   if self.alive then
      self.counter = self.counter + dt
      self.x = self.x + 1
      if self.x > 800 then
         self.x = -440
      end
      if self.counter >= self.wait then
         self.counter = 0
         if self.reverse then
            self.currentemblem = self.currentemblem - 1
         else
            self.currentemblem = self.currentemblem + 1
         end
         if self.currentemblem <= 1 then
            self.reverse = false
         elseif self.currentemblem >= #self.quads then
            self.reverse = true
         end
      end
   end

end



return dolphin
