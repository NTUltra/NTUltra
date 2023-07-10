/// @description become gator
raddrop = 8
meleedamage = 0
mySize = 1
image_speed = 0.4

spr_idle = sprGatorIdle
spr_walk = sprGatorWalk
spr_hurt = sprGatorHurt
spr_dead = sprGatorDead
//behavior
walk = 0
wepangle = choose(-140, 140)
wepflip = 1
gunangle = random(360)
instance_destroy(id,false);
with instance_create(x,y,Gator) {
	my_health = other.my_health;
	alarm[1] = max(other.alarm[1]+5,5 + random(5));
}
