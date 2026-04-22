raddrop = 10
maxhealth = 70;
mySize = 2
event_inherited()
meleedamage = 0
spr_idle = sprScrapDogIdle;
spr_fire = sprScrapDogFire;
spr_walk = sprScrapDogWalk;
spr_hurt = sprScrapDogHurt;
spr_dead = sprScrapDogDead;

snd_hurt = sndScrapDogHit;
snd_dead = sndScrapDogDead;
snd_fire = sndScrapDogFire;
maxAmmo = 8;
ammo = maxAmmo;
fireRate = 1;
gap = 4;
//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 16;

acc = 0.6;
maxSpeed = 2;
tellTime = 10;
gunangleOffset = 0;
spreadRange = 40;
gunangleStep = 0;
alarm[3] = 1;
missileType = ScrapDogMissile;
gonnaShoot = false;
projectileSpeed = 3.7;