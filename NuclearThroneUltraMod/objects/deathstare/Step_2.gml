/// @description Follow player
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	var hit = collision_line_point(x,y,
	x + lengthdir_x(100,image_angle),
	y + lengthdir_y(100,image_angle),
	Wall,true,true);
	if x < other.x
		right = 1;
	else
		right = -1;
	image_xscale = point_distance(x,y,hit[1],hit[2]);
}
else
{
	instance_destroy();	
}