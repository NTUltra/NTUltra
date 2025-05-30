raddrop = 10
maxhealth = 700//45
mySize = 1


event_inherited()
meleedamage = 5

spr_idle = sprBigJellyFishIdle
spr_walk = sprBigJellyFishIdle
spr_hurt = sprBigJellyFishHurt
spr_dead = sprBigJellyFishDead
spr_fire = sprBigJellyFishFire


snd_hurt = sndHitFlesh

//behavior
tellTime = 20;
actTime = 10;
maxAmmo = 3;
ammo = maxAmmo;
alarm[1] = 30+random(90)
maxSpeed = 2.5;
loops = GetPlayerLoops();
firstTime = false;
length = 5;
if loops > 0
{
	actTime = 6;
	tellTime = 15;
	length ++;
}
if loops > 2
	length ++;
if loops > 4
	length ++;
	
sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;