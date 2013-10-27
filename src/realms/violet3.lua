local incantations = require('wizardhat.incantations')
local mysticrealms = require('wizardhat.mysticrealms')
local vellum = require('realms.vellum')

local violet = vellum:new()

local youwin = require('golems.youwin')


function violet:enter()


   love.audio.play(incantations.song04)

   self.color = {255,0,255}

   self.golems = {}

   table.insert(self.golems,youwin:new())
   self.golems[1]:create(100,100)

end



return violet
