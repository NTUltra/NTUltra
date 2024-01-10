img += 0.5

if instance_exists(Throne2)
{
	x = Throne2.x;
	y = Throne2.y + 54;
	scrForcePosition60fps();
}
if image_yscale < 40
{
	if UberCont.normalGameSpeed == 60
		image_yscale += 1;
	else
		image_yscale += 2;
	yEnd = y + lengthdir_y(image_yscale * sprite_get_height(sprite_index),image_angle - 90);
	xEnd = x + lengthdir_x(image_yscale * sprite_get_height(sprite_index),image_angle - 90);
}