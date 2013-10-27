local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local spaceship = clay:new()


function spaceship:create(x,y,flipped)

   self:breathe("spaceship",x,y,incantations.plans.spaceship.emblems,320,100,2240,100,7,math.random(5,10) * .01,flipped,false)

end


function spaceship:mortal(dt)

   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight

   self.alive = self.hover

   if self.alive then
      self.counter = self.counter + dt
      if self.counter >= self.wait then
         self.counter = 0
         self.currentemblem = self.currentemblem + 1
         if self.currentemblem >= #self.quads then
            self.alive = false
            self.x = 800
            self:action2()
         end
      end
   else
      self.counter = self.counter + dt

      local direction = -1

      self.x = self.x + direction

      if self.x <= 0 then self.action1() end

      if self.counter >= self.wait then
         self.counter = 0
         if self.currentemblem >= 3 then
            self.currentemblem = 1
         else
            self.currentemblem = self.currentemblem + 1
         end
      end
   end

end

return spaceship
