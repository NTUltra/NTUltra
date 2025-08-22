/// @description xxx
if owner != noone && instance_exists(owner)
{
	if alarm[1] < 1
	{
		x = owner.x;
		y = owner.y;
		sprite_index = owner.sprite_index;
		image_index = owner.image_index;
		image_angle = owner.angle;
		image_xscale = owner.right;
		image_yscale = owner.image_yscale;
		if UberCont.normalGameSpeed == 60
		{
			alpha += alphaIncrease * 0.5;	
			scale += scaleIncrease * 0.5;
		}
		else
		{
			alpha += alphaIncrease;
			scale += scaleIncrease;
		}
		if alphaIncrease > 0 && alpha > 1 && alarm[2] < 1
		{
			alpha = 1;
			scaleIncrease *= 0.5;
			alarm[2] = fullTimeDelay;
		}
		if alpha <= 0.1
		{
			instance_destroy();	
		}
	}
}
else
	instance_destroy();