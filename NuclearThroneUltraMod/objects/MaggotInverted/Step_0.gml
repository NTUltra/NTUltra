event_inherited()

if sprite_index != spr_hurt
motion_add(direction,1.2)


if hspeed > 0
right = 1
else if hspeed < 0
right = -1
if charge
{
	if sprite_index = spr_hurt
	{
		charge = false;
		image_angle = 0;
		alarm[1] = 10;
	}
	else
	{
		motion_add(direction,1);
		speed = 10;
		sprite_index = sprInvertedFiredMaggot;
		image_angle = direction+180;
	}
}
else 
{
	if speed > maxSpeed
		speed = maxSpeed
	if firstTime
		speed = 0;
}