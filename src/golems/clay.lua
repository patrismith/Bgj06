local incantations = require('wizardhat.incantations')
local mana = require('wizardhat.mana')

local clay = mana:new()


function clay:envisioned()

   love.graphics.setColor(255,255,255)
   love.graphics.drawq(self.plan, self.quads[self.currentemblem], self.x, self.y)

end


function clay:mortal(dt)

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


function clay:briefawakening()

   self.alive = true
   self.die = true

end


function clay:breathe(id,x,y,plan,golembreadth,golemheight,planbreadth,planheight,emblems,wait,flipped, alive)
   self.id = id
   self.x = x
   self.y = y
   self.wait = wait
   self.counter = 0
   self.plan = plan
   self.quads = {}
   self.golemheight = golemheight
   self.golembreadth = golembreadth

   for i=1,emblems do
      local x = ((i-1) * golembreadth)
      table.insert(self.quads, love.graphics.newQuad(x,0,golembreadth,golemheight,planbreadth,planheight))
   end

   for i,v in ipairs(self.quads) do
      if flipped then
         v:flip(true)
      end
   end

   self.flipped = flipped
   self.alive = alive
   self.die = false

   self.currentemblem = 1

end


return clay
