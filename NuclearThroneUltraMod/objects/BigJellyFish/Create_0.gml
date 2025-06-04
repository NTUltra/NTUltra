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
tellTime = 10;
actTime = 6;
maxAmmo = 4;
ammo = maxAmmo;
alarm[1] = 30+random(90)
maxSpeed = 2.75;
loops = GetPlayerLoops();
firstTime = true;
if loops > 2
	length ++;
if loops > 4
	length ++;
	
sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;
	
var adjustedLoops = max(0,loops - 2);
length = 20 + min(adjustedLoops * 2,20);
jellyDelay = max(3,16 - (adjustedLoops*2));
jellyMaxAmmoDelay = max(10,90 - (adjustedLoops*2));
jellyMaxAmmo = min(10,3 + adjustedLoops);
jellyAmmo = jellyMaxAmmo;