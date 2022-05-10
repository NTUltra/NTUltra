raddrop = 150
maxhealth = 900//750
meleedamage = 400
size = 4


event_inherited()
depth --;
spr_idle = sprHyperCrystalIdle
spr_walk = sprHyperCrystalIdle
spr_hurt = sprHyperCrystalHurt
spr_dead = sprHyperCrystalDead
spr_fire = sprHyperCrystalFire


snd_hurt = sndHyperCrystalHurt
snd_dead = sndHyperCrystalDead



//behavior
ammo = 4 + min(4,GetPlayerLoops());
angleStep = 360/ammo;
gunangle = random(360)
maxspeed = 1;
alarm[1] = 30+random(90)
crystalDis = 0;
maxCrystalDis = 100;
myCrystals = ds_list_create();
normalCrystal = LaserCrystal;
altCrystal = LightningCrystal;
isCursed = false;
easyCrystalLoss = true;
scrBossFloor();

halfHP = false;
lowHP = false;
sndtaunt = 0;
tauntdelay = 0;
hasHadIntro = false;