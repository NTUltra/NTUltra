raddrop = 19
maxhealth = 75
mySize = 2

event_inherited()
meleedamage = 3

detectionRange = 200;
spr_gun = sprBuffMushroomGun;
spr_idle = sprBuffMushroomIdle
spr_walk = sprBuffMushroomWalk
spr_hurt = sprBuffMushroomHurt
spr_dead = sprBuffMushroomDead

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode
snd_melee = sndBigMaggotBite

//behavior
justBehindWall = false;
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 14;
maxSpeed = 2.5;
acc = 0.6;
pSpeed = 5;
fireOffset = 14;
maxAmmo = 4;
ammo = maxAmmo;
fireRate = 4;
instance_create(x,y,BigWallBreak);

loops = GetPlayerLoops();

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;
