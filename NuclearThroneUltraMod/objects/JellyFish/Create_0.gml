raddrop = 14
maxhealth = 7//45
meleedamage = 2
size = 1


event_inherited()

spr_idle = sprJellyFish
spr_walk = sprJellyFish
spr_hurt = sprJellyFishHurt
spr_dead = sprJellyFishDead
spr_fire = sprJellyFishFire


snd_hurt = sndHitFlesh

//behavior
maxAmmo = 3;
ammo = maxAmmo;
alarm[1] = 30+random(90)
maxSpeed = 2.5;
loops = GetPlayerLoops();
length = 6;
if loops > 0
	length ++;
if loops > 2
	length ++;
