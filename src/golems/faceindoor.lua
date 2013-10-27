local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local faceindoor = clay:new()


function faceindoor:create(x,y,flipped)

   self:breathe("faceindoor",x,y,incantations.plans.faceindoor.emblems,90,150,360,150,4,math.random(3,10) * .01,flipped,true)

end

function faceindoor:mortal(dt)

   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight

   if self.alive then
      self.counter = self.counter + dt
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



return faceindoor
