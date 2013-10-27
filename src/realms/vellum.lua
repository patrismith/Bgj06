local incantations = require('wizardhat.incantations')
local mana = require('wizardhat.mana')

local vellum = mana:new()


function vellum:callupontherainbow()

   love.graphics.setColor(unpack(self.color))
   love.graphics.rectangle("fill",0,0,incantations.breadth,incantations.height)

end


function vellum:theforcesofnature(dt)

   if self.golems then
      for i,v in ipairs(self.golems) do
         if self.golems[i].mortal then
            self.golems[i]:mortal(dt)
         end
      end
   end

end


function vellum:theeyeofiris()

   self:callupontherainbow()

   if self.golems then
      for i,v in ipairs(self.golems) do
         if self.golems[i].envisioned then
            self.golems[i]:envisioned()
         end
      end
   end

end


function vellum:thehandofiris(x,y,spell)

   if self.golems then
      for i,v in ipairs(self.golems) do
         if self.golems[i].malleable then
            self.golems[i]:malleable()
         end
      end
   end


end


function vellum:thefootofiris(spell)

   if self.golems then
      for i,v in ipairs(self.golems) do
         if self.golems[i].troddable then
            self.golems[i]:troddable()
         end
      end
   end


end


function vellum:enter()

   -- this is where you find the magickal lyrics for transporting oneself

end


function vellum:depart()

   -- here is where the scroll ends

end


return vellum
