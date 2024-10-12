event_inherited()


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if walk > 0
{
if sprite_index != spr_hurt
motion_add(direction,0.8)
}


if speed > maxSpeed
	speed = maxSpeed


if !sleeping && target != noone && existTime > 40
{
	if instance_exists(target)
	mp_potential_step(target.x,target.y,2,0)
}
if sleeping
	speed = 0;

