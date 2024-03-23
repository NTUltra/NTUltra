event_inherited()

if sprite_index != spr_hurt
motion_add(direction,0.6)


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if charge
{
	if sprite_index = spr_hurt
	{
		charge = false;
		ignoreOverlap = false;
		image_angle = 0;
		alarm[1] = 10;
	}
	else
	{
		motion_add(direction,1);
		speed = 6;
		sprite_index = sprFiredMaggot;
		image_angle = direction;
	}
}
else
{
	if speed > maxSpeed
		speed = maxSpeed
	if firstTime
		speed = 0;
}