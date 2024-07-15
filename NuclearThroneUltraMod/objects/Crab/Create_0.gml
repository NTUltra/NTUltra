raddrop = 14
maxhealth = 13
mySize = 2



event_inherited()
meleedamage = 5

spr_idle = sprCrabIdle
spr_walk = sprCrabWalk
spr_hurt = sprCrabHurt
spr_dead = sprCrabDead
spr_fire = sprCrabFire

snd_hurt = sndScorpionHit
snd_dead = sndScorpionDie
snd_melee = sndScorpionMelee

//behavior
maxAmmo = 6;
ammo = maxAmmo;
walk = 0
gunangle = random(360)
alarm[1] = 15+random(60)

actTime = 20;