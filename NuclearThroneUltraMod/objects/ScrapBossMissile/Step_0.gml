event_inherited()


if sprite_index != spr_hurt and target > 0
	motion_add(point_direction(x,y,target.x,target.y),acc)

if sprite_index == spr_hurt
{
	if alarm[1] < 1
		alarm[1] = explodeOnHitTime;
}
if alarm[1] < 20
{
	alarm[3] = blink;
}
speed = maxSpeed;
