raddrop = 150
maxhealth = 1000//750
mySize = 6


event_inherited()
meleedamage = 200

depth --;
spr_idle = sprHyperCrystalIdle
spr_walk = sprHyperCrystalIdle
spr_hurt = sprHyperCrystalHurt
spr_dead = sprHyperCrystalDead
spr_fire = sprHyperCrystalFire


snd_hurt = sndHyperCrystalHurt
snd_dead = sndHyperCrystalDead



//behavior
doDiamonds = false;
diamondsAngle = 0;
loops = GetPlayerLoops();
ammo = 4 + min(4,loops);
angleStep = 360/ammo;
gunangle = random(360)
maxSpeed = 1;
alarm[1] = 30+random(90)
crystalDis = 0;
maxCrystalDis = 100;
maxCrystalDis += 8 * clamp(loops - 1,0,4);
myCrystals = ds_list_create();
normalCrystal = LaserCrystal;
altCrystal = LightningCrystal;
goldNormalCrystal = LaserCrystal;
goldAltCrystal = LightningCrystal;
isCursed = false;
easyCrystalLoss = true;
scrBossFloor();

halfHP = false;
lowHP = false;
sndtaunt = 0;
tauntdelay = 0;
hasHadIntro = false;