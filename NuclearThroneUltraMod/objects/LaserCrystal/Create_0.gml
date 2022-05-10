raddrop = 20
maxhealth = 65//45
meleedamage = 20
size = 2


event_inherited()

spr_idle = sprLaserCrystalIdle
spr_walk = sprLaserCrystalIdle
spr_hurt = sprLaserCrystalHurt
spr_dead = sprLaserCrystalDead
spr_fire = sprLaserCrystalFire


snd_hurt = sndLaserCrystalHit
snd_dead = sndLaserCrystalDeath


//behavior
ammo = 4
gunangle = random(360)
alarm[1] = 30+random(90)

loops = GetPlayerLoops();

