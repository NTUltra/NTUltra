event_inherited()


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if walk > 0
{
if sprite_index != spr_hurt
motion_add(direction,0.6)
}

if !sleeping && target != noone && instance_exists(target) && alarm[2] < 1
{
	if instance_exists(target)
		mp_potential_step(target.x,target.y,1.25,0)
}

if speed > maxSpeed
	speed = maxSpeed;
if sleeping
	speed = 0;