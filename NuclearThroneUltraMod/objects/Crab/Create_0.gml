raddrop = 22
maxhealth = 13
meleedamage = 5
size = 2



event_inherited()
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