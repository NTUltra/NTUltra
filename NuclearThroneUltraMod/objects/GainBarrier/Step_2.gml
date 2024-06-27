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
			alpha += 0.05;	
			scale -= 0.125;
		}
		else
		{
			alpha += 0.1;
			scale -= 0.25;
		}
		if alpha > 1
			alpha = 1;
		if scale <= 1
		{
			instance_destroy();	
		}
	}
}
else
	instance_destroy();