event_inherited()


if sprite_index != spr_hurt and target != noone
	motion_add(point_direction(x,y,target.x,target.y),acc)

if sprite_index == spr_hurt
{
	if alarm[5] < 1
		alarm[5] = explodeOnHitTime;
}
if alarm[5] < 20
{
	alarm[3] = blink;
}
speed = maxSpeed;
