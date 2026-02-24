/// @description Avoid player
if instance_exists(Player)
{
	var len = 0.5;
	var dir = point_direction(Player.x,Player.y,x,y)
	if place_meeting(x,y,Player)
	{
		len += 0.5;
	}
	x += lengthdir_x(len,dir);
	y += lengthdir_y(len,dir);
}
alarm[2] = 1;