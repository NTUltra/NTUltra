raddrop = 12
maxhealth = 16
meleedamage = 1
mySize = 2

if UberCont.loops>1
maxhealth=24;



event_inherited()
fireProof = true;
spr_idle = sprInvertedSalamanderIdle
spr_walk = sprInvertedSalamanderWalk
spr_hurt = sprInvertedSalamanderHurt
spr_dead = sprInvertedSalamanderDead
spr_fire = sprInvertedSalamanderFire

snd_hurt = sndSalamanderHurt
snd_dead = sndSalamanderDead
snd_melee = sndSalamanderFire

//behavior
ammo = 10
walk = 0
gunangle = random(360)
angleleft=false;
alarm[1] = 30+random(90)

