raddrop = 10
maxhealth = 7//45
mySize = 1


event_inherited()
meleedamage = 2

spr_idle = sprJellyFish
spr_walk = sprJellyFish
spr_hurt = sprJellyFishHurt
spr_dead = sprJellyFishDead
spr_fire = sprJellyFishFire


snd_hurt = sndHitFlesh

//behavior
tellTime = 20;
actTime = 10;
maxAmmo = 3;
ammo = maxAmmo;
alarm[1] = 30+random(90)
maxSpeed = 2.5;
loops = GetPlayerLoops();
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