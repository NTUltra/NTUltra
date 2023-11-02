/// @description Position on room start
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
	scrForcePosition60fps();
	speed = 0;
}
if !place_meeting(x,y,Floor)
{
	var n = instance_nearest(x,y,Floor)
	if n !=noone
	{
		x = n.x+8;
		y = n.y+8;
	}
}