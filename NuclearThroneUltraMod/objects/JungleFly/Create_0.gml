raddrop = 10
maxhealth = 40
meleedamage = 1
mySize = 2

event_inherited()

spr_idle = sprJungleFlyIdle
spr_walk = sprJungleFlyWalk
spr_hurt = sprJungleFlyHurt
spr_dead = sprJungleFlyDead

snd_hurt = sndFlyHurt
snd_dead = sndFlyDead;
snd_melee = sndFlyMelee;
//behavior
gunangle = random(360)
alarm[1] = 20+random(90)
wkick = 0
maxAmmo = 6;
ammo = maxAmmo;
totalAmmo = maxAmmo * 4;
firerate = 2;
maxAmmo += min(GetPlayerLoops(),4);
run = 0;
alarm[0] = 1;
actTime = 6;
acc = 2;
constAcc = 0.8;