local mana = {}

function mana:new(impetus)
   impetus = impetus or {}
   setmetatable(impetus, self)
   self.__index = self
   return impetus
end

return mana
