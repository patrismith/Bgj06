local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local youwin = clay:new()


function youwin:create(x,y,flipped)

   self:breathe("youwin",x,y,incantations.plans.youwin.emblems,400,300,2400,300,6,0.5,flipped,true)

end

function youwin:mortal(dt)

   --print(self.x,self.y,self.id,self.golembreadth,self.golemheight)
   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight

   if self.alive then
      self.counter = self.counter + dt
      if self.counter >= self.wait then
         self.counter = 0
         self.currentemblem = self.currentemblem + 1
         if self.currentemblem >= #self.quads then
            self.alive = false
         end
      end
   end

end



return youwin
