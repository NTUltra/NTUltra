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
		image_yscale += growRate * 0.5;
	else
		image_yscale += growRate;
	yEnd = y + (image_yscale * sprite_get_height(sprite_index))
}