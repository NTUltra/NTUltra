image_index = 0

mySize = 3
raddrop = 0;
maxhealth = 100
meleedamage = 0;
target = -1
spr_idle = sprBigMushroomPropIdle
spr_walk = sprBigMushroomPropIdle
spr_hurt = sprBigMushroomPropHurt
spr_dead = sprBigMushroomPropDead

event_inherited()

image_speed = 0.4
friction = 100;
with Wall
{
	if place_meeting(x,y,other)
	{
		instance_destroy()
		instance_create(x,y,FloorExplo)
	}
}

scrBossFloor();
instance_create(x,y,BigWallBreak);
timer = 0
right = choose(1,-1);
image_xscale = right;