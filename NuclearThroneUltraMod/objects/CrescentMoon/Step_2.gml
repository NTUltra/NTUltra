/// @description Orbit
if instance_exists(Player)
{
	var len = 28;
	image_angle = point_direction(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y);
	if type == 1
		image_angle += 180;
	x = Player.x + lengthdir_x(len,image_angle);
	y = Player.y + lengthdir_y(len,image_angle);
	scrForcePosition60fps();
}
else
{
	instance_destroy();	
}