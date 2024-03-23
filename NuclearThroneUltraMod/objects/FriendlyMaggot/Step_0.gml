event_inherited()

if speed = 0
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}

if sprite_index != spr_hurt
motion_add(direction,0.6)


if hspeed > 0
	right = 1
else if hspeed < 0
	right = -1

if charge
{
	if sprite_index == spr_hurt
	{
		charge = false;
		ignoreOverlap = false;
		image_angle = 0;
		alarm[1] = 10;
	}
	else
	{
		motion_add(direction,1);
		speed = 12;
		sprite_index = sprFiredFriendlyMaggot;
		image_angle = direction;
	}
}
else
{
	if speed > maxSpeed
		speed = maxSpeed
}
if my_health <= 0
{
	instance_destroy();	
}