/// @description Simple AI, circle the player
alarm[1] = 15 + irandom(15);
if instance_exists(Player)
{
	motion_add(point_direction(x,y,Player.x,Player.y),3);
	walk = 10;
	//motion_add(point_direction(x,y,Player.x,Player.y)+choose (180,0,090,-90)+random_range(90,-90),2);
}
if hspeed > 0
	image_xscale = 1;
else if hspeed < 0
	image_xscale = -1;