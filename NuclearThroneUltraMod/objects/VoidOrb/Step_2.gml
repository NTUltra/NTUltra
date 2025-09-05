/// @description Stick to creator
if instance_exists(creator)
{
	direction = point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y);
	x = creator.x+lengthdir_x((distanceOffset * image_xscale),direction)
	y = creator.y+lengthdir_y((distanceOffset * image_xscale),direction)
	with creator
	{
		wkick = 4;	
	}
	var rate = 0.022;
	if alarm[1] > 3
	{
		if UberCont.normalGameSpeed == 60
		{
			rate *= 0.5;	
		}
	}
	else if alarm[1] < 1
	{
		if UberCont.normalGameSpeed == 60
		{
			rate *= -1;
		}
		else
		{
			rate *= -2;
		}
		if image_xscale < 0.3
			instance_destroy();
	}
	image_xscale += rate;
	image_yscale += rate;
}
instance_destroy();