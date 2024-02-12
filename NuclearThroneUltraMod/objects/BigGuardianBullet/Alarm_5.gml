/// @description secretly slow down when near player
if instance_exists(Player)
{
	if point_distance(x+hspeed,y+vspeed,Player.x,Player.y) < 48
	{
		motion_add(point_direction(Player.x,Player.y,x,y),0.02);
		speed -= 0.015;
	}
	alarm[5] = 1;
}