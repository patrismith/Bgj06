local incantations = require('wizardhat.incantations')
local clay = require('golems.clay')

local orangeplanet = clay:new()


function orangeplanet:create()

   self:breathe("orangeplanet",25,0,incantations.plans.orangeplanet.emblems,530,460,incantations.plans.orangeplanet.breadth,incantations.plans.orangeplanet.height,4,math.random(5,10) * .01,false,false)

end


function orangeplanet:name()

   return "orangeplanet"

end


function orangeplanet:mortal(dt)

   self.hover = incantations.handx>self.x and incantations.handy>self.y and incantations.handx<self.x + self.golembreadth and incantations.handy<self.y+self.golemheight

   self.alive = self.hover

   if self.alive and self.ok then
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


return orangeplanet
