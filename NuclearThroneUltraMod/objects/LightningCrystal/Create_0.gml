raddrop = 23
maxhealth = 55//45
meleedamage = 20
mySize = 2

event_inherited()
spr_idle = sprLightningCrystalIdle
spr_walk = sprLightningCrystalIdle
spr_hurt = sprLightningCrystalHurt
spr_dead = sprLightningCrystalDead
spr_fire = sprLaserCrystalFire


snd_hurt = sndLaserCrystalHit
snd_dead = sndLaserCrystalDeath

//behavior
ammo = 4
gunangle = random(360)
alarm[1] = 30+random(90)
alarm[0] = 1;
loops = GetPlayerLoops();

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;