event_inherited()
raddrop = 15
meleedamage = 6
maxhealth = 30
EnemyHealthAdjustments()
spr_idle = sprInvertedJungleFlyIdle
spr_walk = sprInvertedJungleFlyWalk
spr_hurt = sprInvertedJungleFlyHurt
spr_dead = sprInvertedJungleFlyDead

snd_hurt = sndFlyHurt;
snd_dead = sndFlyDead;
snd_melee = sndFlyMelee;
//behavior
gunangle = random(360)
alarm[1] = 20+random(90)
wkick = 0
maxAmmo = 6;
ammo = maxAmmo;
firerate = 2;
maxAmmo += min(GetPlayerLoops(),4);
run = 0;
alarm[0] = 1;
actTime = 6;
acc = 2;
constAcc = 0.8;