event_inherited()
if charge
{
	imageIndex += 0.4;
	if UberCont.normalGameSpeed == 60
		imageIndex -= 0.2;
	if sprite_index != spr_hurt
		sprite_index = spr_charge;
		
	if round(imageIndex) == image_number - 3 && !fired
	{
		event_user(0);	
	}
	speed = 0;
	
	//EL SUCKKO MUCHAS FUCKKO what?
	if imageIndex > 7 && !fired && alarm[3] < 1
	{
		alarm[3] = 1;
	}
	else if imageIndex >= 28//End fire
	{
		depth = -2;
		charge = false;
		image_index = 0;
		sprite_index = spr_normal;
		spr_idle = spr_normal;
		spr_walk = spr_normal;
		spr_hurt = spr_normal_hurt;
		alarm[1] = 7-min(loops*2,4);
		motion_add(direction,2);
	}
}
else
{
speed = max(speed,2);
motion_add(direction,2)

if speed > maxSpeed
speed = maxSpeed
}