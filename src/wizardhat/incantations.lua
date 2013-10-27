local incantations = {}


function incantations:theforcesofnature(dt)

   self.handx, self.handy = love.mouse.getPosition()

end


function incantations:theeyeofiris()

end


function incantations:summon()

   self.breadth = love.graphics.getWidth()
   self.height = love.graphics.getHeight()

   self.song01 = love.audio.newSource("artifacts/song01.ogg")
   self.song01:setLooping(true)
   self.song02 = love.audio.newSource("artifacts/song02.ogg")
   self.song02:setLooping(true)
   self.song03 = love.audio.newSource("artifacts/song03.ogg")
   self.song03:setLooping(true)
   self.song04 = love.audio.newSource("artifacts/awesomesong.ogg")
   self.song04:setLooping(true)



   self.plans = {}

   --red
   self.plans.highheel = {}
   self.plans.highheel.emblems = love.graphics.newImage("artifacts/highheel.png")
   self.plans.highheel.breadth = self.plans.highheel.emblems:getWidth()
   self.plans.highheel.height = self.plans.highheel.emblems:getHeight()

   self.plans.lips = {}
   self.plans.lips.emblems = love.graphics.newImage("artifacts/lips.png")
   self.plans.lips.breadth = self.plans.lips.emblems:getWidth()
   self.plans.lips.height = self.plans.lips.emblems:getHeight()

   -- no wait, yellow
   self.plans.redeye = {}
   self.plans.redeye.emblems = love.graphics.newImage("artifacts/redeye.png")
   self.plans.redeye.breadth = self.plans.redeye.emblems:getWidth()
   self.plans.redeye.height = self.plans.redeye.emblems:getHeight()

   --orange
   self.plans.littleastro = {}
   self.plans.littleastro.emblems = love.graphics.newImage("artifacts/littleastro.png")
   self.plans.littleastro.breadth = self.plans.littleastro.emblems:getWidth()
   self.plans.littleastro.height = self.plans.littleastro.emblems:getHeight()

   self.plans.bigastro = {}
   self.plans.bigastro.emblems = love.graphics.newImage("artifacts/bigastro.png")
   self.plans.bigastro.breadth = self.plans.bigastro.emblems:getWidth()
   self.plans.bigastro.height = self.plans.bigastro.emblems:getHeight()

   self.plans.orangeplanet = {}
   self.plans.orangeplanet.emblems = love.graphics.newImage("artifacts/orangeplanet.png")
   self.plans.orangeplanet.breadth = self.plans.orangeplanet.emblems:getWidth()
   self.plans.orangeplanet.height = self.plans.orangeplanet.emblems:getHeight()

   self.plans.spaceship = {}
   self.plans.spaceship.emblems = love.graphics.newImage("artifacts/spaceship.png")
   self.plans.spaceship.breadth = self.plans.spaceship.emblems:getWidth()
   self.plans.spaceship.height = self.plans.spaceship.emblems:getHeight()

   --yellow
   self.plans.dolphin = {}
   self.plans.dolphin.emblems = love.graphics.newImage("artifacts/dolphin.png")
   self.plans.dolphin.breadth = self.plans.dolphin.emblems:getWidth()
   self.plans.dolphin.height = self.plans.dolphin.emblems:getHeight()

   self.plans.spear = {}
   self.plans.spear.emblems = love.graphics.newImage("artifacts/spear.png")
   self.plans.spear.breadth = self.plans.spear.emblems:getWidth()
   self.plans.spear.height = self.plans.spear.emblems:getHeight()

   self.plans.seacreatures = {}
   self.plans.seacreatures.emblems = love.graphics.newImage("artifacts/seacreatures.png")
   self.plans.seacreatures.breadth = self.plans.seacreatures.emblems:getWidth()
   self.plans.seacreatures.height = self.plans.seacreatures.emblems:getHeight()

   self.plans.fish = {}
   self.plans.fish.emblems = love.graphics.newImage("artifacts/fish.png")
   self.plans.fish.breadth = self.plans.fish.emblems:getWidth()
   self.plans.fish.height = self.plans.fish.emblems:getHeight()

   --green
   self.plans.tcoin = {}
   self.plans.tcoin.emblems = love.graphics.newImage("artifacts/tcoin.png")
   self.plans.tcoin.breadth = self.plans.tcoin.emblems:getWidth()
   self.plans.tcoin.height = self.plans.tcoin.emblems:getHeight()

   self.plans.planetcoin = {}
   self.plans.planetcoin.emblems = love.graphics.newImage("artifacts/planetcoin.png")
   self.plans.planetcoin.breadth = self.plans.planetcoin.emblems:getWidth()
   self.plans.planetcoin.height = self.plans.planetcoin.emblems:getHeight()

   self.plans.coinstack = {}
   self.plans.coinstack.emblems = love.graphics.newImage("artifacts/coinstack.png")
   self.plans.coinstack.breadth = self.plans.coinstack.emblems:getWidth()
   self.plans.coinstack.height = self.plans.coinstack.emblems:getHeight()

   self.plans.ocoin = {}
   self.plans.ocoin.emblems = love.graphics.newImage("artifacts/ocoin.png")
   self.plans.ocoin.breadth = self.plans.ocoin.emblems:getWidth()
   self.plans.ocoin.height = self.plans.ocoin.emblems:getHeight()

   self.plans.wallet = {}
   self.plans.wallet.emblems = love.graphics.newImage("artifacts/wallet.png")
   self.plans.wallet.breadth = self.plans.wallet.emblems:getWidth()
   self.plans.wallet.height = self.plans.wallet.emblems:getHeight()

   self.plans.tinydollar = {}
   self.plans.tinydollar.emblems = love.graphics.newImage("artifacts/tinydollar.png")
   self.plans.tinydollar.breadth = self.plans.tinydollar.emblems:getWidth()
   self.plans.tinydollar.height = self.plans.tinydollar.emblems:getHeight()

   self.plans.cutedollar = {}
   self.plans.cutedollar.emblems = love.graphics.newImage("artifacts/cutedollar.png")
   self.plans.cutedollar.breadth = self.plans.cutedollar.emblems:getWidth()
   self.plans.cutedollar.height = self.plans.cutedollar.emblems:getHeight()

   self.plans.bigdollar = {}
   self.plans.bigdollar.emblems = love.graphics.newImage("artifacts/bigdollar.png")
   self.plans.bigdollar.breadth = self.plans.bigdollar.emblems:getWidth()
   self.plans.bigdollar.height = self.plans.bigdollar.emblems:getHeight()

   --blue
   self.plans.blueplanet = {}
   self.plans.blueplanet.emblems = love.graphics.newImage("artifacts/blueplanet.png")
   self.plans.blueplanet.breadth = self.plans.blueplanet.emblems:getWidth()
   self.plans.blueplanet.height = self.plans.blueplanet.emblems:getHeight()

   self.plans.baseblueplanet = {}
   self.plans.baseblueplanet.emblems = love.graphics.newImage("artifacts/baseblueplanet.png")
   self.plans.baseblueplanet.breadth = self.plans.baseblueplanet.emblems:getWidth()
   self.plans.baseblueplanet.height = self.plans.baseblueplanet.emblems:getHeight()

   self.plans.blueeye = {}
   self.plans.blueeye.emblems = love.graphics.newImage("artifacts/blueeye.png")
   self.plans.blueeye.breadth = self.plans.blueeye.emblems:getWidth()
   self.plans.blueeye.height = self.plans.blueeye.emblems:getHeight()

   self.plans.bluemouth = {}
   self.plans.bluemouth.emblems = love.graphics.newImage("artifacts/bluemouth.png")
   self.plans.bluemouth.breadth = self.plans.bluemouth.emblems:getWidth()
   self.plans.bluemouth.height = self.plans.bluemouth.emblems:getHeight()

   self.plans.faceindoor = {}
   self.plans.faceindoor.emblems = love.graphics.newImage("artifacts/faceindoor.png")
   self.plans.faceindoor.breadth = self.plans.faceindoor.emblems:getWidth()
   self.plans.faceindoor.height = self.plans.faceindoor.emblems:getHeight()

   --indigo
   self.plans.tulip = {}
   self.plans.tulip.emblems = love.graphics.newImage("artifacts/tulip.png")
   self.plans.tulip.breadth = self.plans.tulip.emblems:getWidth()
   self.plans.tulip.height = self.plans.tulip.emblems:getHeight()

   self.plans.daisy = {}
   self.plans.daisy.emblems = love.graphics.newImage("artifacts/daisy.png")
   self.plans.daisy.breadth = self.plans.daisy.emblems:getWidth()
   self.plans.daisy.height = self.plans.daisy.emblems:getHeight()

   self.plans.clover = {}
   self.plans.clover.emblems = love.graphics.newImage("artifacts/clover.png")
   self.plans.clover.breadth = self.plans.clover.emblems:getWidth()
   self.plans.clover.height = self.plans.clover.emblems:getHeight()

   self.plans.poppy = {}
   self.plans.poppy.emblems = love.graphics.newImage("artifacts/poppy.png")
   self.plans.poppy.breadth = self.plans.poppy.emblems:getWidth()
   self.plans.poppy.height = self.plans.poppy.emblems:getHeight()

   self.plans.ladyann = {}
   self.plans.ladyann.emblems = love.graphics.newImage("artifacts/ladyann.png")
   self.plans.ladyann.breadth = self.plans.ladyann.emblems:getWidth()
   self.plans.ladyann.height = self.plans.ladyann.emblems:getHeight()

   --violet
   self.plans.guns = {}
   self.plans.guns.emblems = love.graphics.newImage("artifacts/guns.png")
   self.plans.guns.breadth = self.plans.guns.emblems:getWidth()
   self.plans.guns.height = self.plans.guns.emblems:getHeight()

   self.plans.guns2 = {}
   self.plans.guns2.emblems = love.graphics.newImage("artifacts/guns2.png")
   self.plans.guns2.breadth = self.plans.guns2.emblems:getWidth()
   self.plans.guns2.height = self.plans.guns2.emblems:getHeight()

   self.plans.boss = {}
   self.plans.boss.emblems = love.graphics.newImage("artifacts/boss.png")
   self.plans.boss.breadth = self.plans.boss.emblems:getWidth()
   self.plans.boss.height = self.plans.boss.emblems:getHeight()

   self.plans.youwin = {}
   self.plans.youwin.emblems = love.graphics.newImage("artifacts/youwin.png")
   self.plans.youwin.breadth = self.plans.youwin.emblems:getWidth()
   self.plans.youwin.height = self.plans.youwin.emblems:getHeight()

   --self.plans.youlose = {}
   --self.plans.youlose.emblems = love.graphics.newImage("artifacts/youlose.png")
   --self.plans.youlose.breadth = self.plans.youlose.emblems:getWidth()
   --self.plans.youlose.height = self.plans.youlose.emblems:getHeight()


end


return incantations
