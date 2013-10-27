local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local seacreatures = clay:new()


function seacreatures:create(x,y,flipped)

   self:breathe("seacreatures",x,y,incantations.plans.seacreatures.emblems,430,200,3010,200,7,math.random(2,10) * .02,flipped,true)

end


function seacreatures:mortal(dt)

   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight


   if self.alive then
      self.counter = self.counter + dt
      if self.counter >= self.wait then
         self.counter = 0
         self.x = math.random(-400,800)
         self.y = math.random(-200,600)
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


return seacreatures
