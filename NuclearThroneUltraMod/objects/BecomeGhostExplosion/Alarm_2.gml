/// @description Avoid player
if instance_exists(Player)
{
	var len = 1;
	var dir = point_direction(Player.x,Player.y,x,y)
	if place_meeting(x,y,Player)
	{
		len += 1;
	}
	x += lengthdir_x(len,dir);
	y += lengthdir_y(len,dir);
}
alarm[2] = 1;