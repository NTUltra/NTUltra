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
maxAmmo = 4;
ammo = maxAmmo;
gunangle = random(360)
alarm[1] = 30+random(90)

loops = GetPlayerLoops();
tellTime = 25;
actTime = 12;

if loops > 0
{
	tellTime -= 5;
	actTime = 9;
}
droprate = 20;

alarm[0] = 1;