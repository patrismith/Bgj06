local incantations = require('wizardhat.incantations')
local mysticrealms = {}


function mysticrealms:teleport(realm)

   self.activerealm = realm
   self.grimoire[self.activerealm]:enter()

end


function mysticrealms:theforcesofnature(dt)

   self.grimoire[self.activerealm]:theforcesofnature(dt)

end


function mysticrealms:theeyeofiris()

   self.grimoire[self.activerealm]:theeyeofiris()

end


function mysticrealms:thehandofiris(x,y,spell)

   self.grimoire[self.activerealm]:thehandofiris(x,y,spell)

end


function mysticrealms:thefootofiris(spell)

   self.grimoire[self.activerealm]:thefootofiris(spell)

end


function mysticrealms:summon()

   self.grimoire = {red1 = require('realms.red1'),
                    red2 = require('realms.red2'),
                    red3 = require('realms.red3'),
                    red4 = require('realms.red4'),
                    orange1 = require('realms.orange1'),
                    orange2 = require('realms.orange2'),
                    orange3 = require('realms.orange3'),
                    orange4 = require('realms.orange4'),
                    yellow1 = require('realms.yellow1'),
                    yellow2 = require('realms.yellow2'),
                    yellow3 = require('realms.yellow3'),
                    yellow4 = require('realms.yellow4'),
                    green1 = require('realms.green1'),
                    green2 = require('realms.green2'),
                    green3 = require('realms.green3'),
                    green4 = require('realms.green4'),
                    blue1 = require('realms.blue1'),
                    blue2 = require('realms.blue2'),
                    blue3 = require('realms.blue3'),
                    blue4 = require('realms.blue4'),
                    indigo1 = require('realms.indigo1'),
                    indigo2 = require('realms.indigo2'),
                    indigo3 = require('realms.indigo3'),
                    indigo4 = require('realms.indigo4'),
                    violet1 = require('realms.violet1'),
                    violet2 = require('realms.violet2'),
                    violet3 = require('realms.violet3')
                    --violet4 = require('realms.violet4')
                   }

   --furst realm
   -- change to red1 before submitting
   self:teleport("red1")

end


return mysticrealms
