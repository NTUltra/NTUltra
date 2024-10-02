/// @description Create Ghost enterance
var wall = collision_line(x,y,x - 500,y,WallHitMe,false,false)
if wall != noone
{
	with wall
	{
		instance_create(x,y,PitEnterance);	
	}
}