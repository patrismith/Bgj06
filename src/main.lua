seebeyond = false

local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')


function love.load()

   incantations:summon()
   mysticrealms:summon()

end


function love.update(dt)

   incantations:theforcesofnature(dt)
   mysticrealms:theforcesofnature(dt)

end


function love.draw()

   incantations:theeyeofiris()
   mysticrealms:theeyeofiris()

end


function love.mousepressed(x, y, spell)

   mysticrealms:thehandofiris(x,y,spell)

end


function love.keypressed(spell)

   mysticrealms:thefootofiris(spell)

   if spell == "`" then
      seebeyond = not seebeyond
   end

end
