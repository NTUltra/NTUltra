raddrop = 16
maxhealth = 65//45
mySize = 2


event_inherited()
meleedamage = 20

if scrIsHardMode() && object_index != UltraCrystal && (!instance_exists(UltraCrystal) || random(3) < 1) && 
instance_exists(Player) && Player.area != 126 && Player.area != 127// && Player.area != 6 && Player.area != 124//HARD MODE
{
	//Not Graveyard inv grave
	instance_destroy(id,false);
	instance_create(x,y,UltraCrystal);
}

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
droprate = 22;
maxSpeed = 1.5;
alarm[0] = 1;

sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;