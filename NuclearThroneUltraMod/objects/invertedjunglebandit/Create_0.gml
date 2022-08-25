
event_inherited()
raddrop = 8
maxhealth = 6
EnemyHealthAdjustments();
spr_idle = sprInvertedJungleBanditIdle
spr_walk = sprInvertedJungleBanditWalk
spr_hurt = sprInvertedJungleBanditHurt
spr_dead = sprInvertedJungleBanditDead
spr_wep = sprJungleBanditGun;
//behavior
walk = 0
gunangle = random(360)
alarm[1] = 20+random(90)
wkick = 0
maxAmmo = 8;
ammo = maxAmmo;
maxAmmo += min(GetPlayerLoops(),4);

gonnashoot = 0
actTime = 10;
alarm[2] = 1
maxSpeed = 4;
acc = 1;
isInverted = true;