local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local blueplanet = clay:new()


function blueplanet:create(x,y,flipped)

   self:breathe("blueplanet",x,y,incantations.plans.blueplanet.emblems,800,600,4000,600,5,.07,flipped,false)

end


function blueplanet:mortal(dt)

   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight

   self.alive = self.hover

   if self.alive then
      self.counter = self.counter + dt
      if self.counter >= self.wait then
         self.counter = 0
         self.currentemblem = self.currentemblem + 1
         if self.currentemblem >= #self.quads then
            self.alive = false
            self:action()
         end
      end
   end

end

return blueplanet
