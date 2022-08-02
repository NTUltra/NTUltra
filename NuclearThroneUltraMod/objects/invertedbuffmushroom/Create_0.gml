event_inherited()
raddrop = 40;
maxhealth = 30;
EnemyHealthAdjustments();
meleedamage = 5
spr_idle = sprInvertedBuffMushroomIdle
spr_walk = sprInvertedBuffMushroomWalk
spr_hurt = sprInvertedBuffMushroomHurt
spr_dead = sprInvertedBuffMushroomDead

//behavior
detectionRange = 132;
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 11;
maxSpeed = 3.5;
acc = 0.8;
pSpeed = 12;
fireOffset = 12;
maxAmmo = 8;
ammo = maxAmmo;
fireRate = 2;
instance_create(x,y,BigWallBreak);

if loops > 2
	pSpeed = 12.5//Bouncer bullets
