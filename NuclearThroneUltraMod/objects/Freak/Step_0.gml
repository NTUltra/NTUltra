event_inherited()


if hspeed > 0
	right = image_xscale
else if hspeed < 0
	right = -image_xscale

if walk > 0
{
	if sprite_index != spr_hurt
		motion_add(direction,acc)
}

if speed > maxSpeed//4
	speed = maxSpeed
	
if sleeping
	speed = 0;