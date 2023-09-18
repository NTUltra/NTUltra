/// @description Scale
alarm[2] = 1;

if image_yscale < 0.4
{/*
	var sw = sprite_width;
	image_xscale += 0.1;
	var lw = sw - sprite_width;
	x += lengthdir_x(lw,direction);
	y += lengthdir_y(lw,direction);*/
	instance_destroy();
}
else
{
	image_yscale -= 0.1;
}