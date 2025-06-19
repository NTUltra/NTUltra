speed = 0;
x = xstart;
y = ystart;
if active > 1
{
	event_inherited()
}
else if active == 1
{
	var dt = 0.4;
	if UberCont.normalGameSpeed == 60
		dt *= 0.5;
	imageIndex += dt;
	sprite_index = spr_active;
	image_index = imageIndex;
	if imageIndex < 6 && instance_exists(Player) && point_distance(x,y,Player.x,Player.y) < activateRange
	{
		//Slower animation when you're touching it
		imageIndex -= dt * 0.25;
	}
	if imageIndex > 6
	{
		mask_index = mskVenusRadTrap;
		meleedamage = actualMeleeDamage;
		imageIndex += dt * 0.25;
	}
	if imageIndex >= 11
	{
		active = 2;
		sprite_index = spr_idle;
		alarm[1] = actTime;
	}
}

