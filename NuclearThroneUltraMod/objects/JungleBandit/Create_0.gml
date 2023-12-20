raddrop = 5
maxhealth = 9
meleedamage = 0
mySize = 1

event_inherited()

spr_wep = sprJungleBanditGun;
spr_idle = sprJungleBanditIdle
spr_walk = sprJungleBanditWalk
spr_hurt = sprJungleBanditHurt
spr_dead = sprJungleBanditDead

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

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
alarm[2] = 30
maxSpeed = 3.5;
acc = 0.8;
isInverted = false;