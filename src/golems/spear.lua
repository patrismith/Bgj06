local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local spear = clay:new()


function spear:create(x,y,flipped)

   self:breathe("spear",x,y,incantations.plans.spear.emblems,370,270,1480,270,4,0.04,flipped,false)

end


function spear:mortal(dt)

   --print(self.x,self.y,self.id,self.golembreadth,self.golemheight)
   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight

   self.alive = self.hover

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



return spear
