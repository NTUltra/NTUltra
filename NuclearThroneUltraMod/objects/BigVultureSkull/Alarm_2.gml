/// @description Create Ghost enterance
var wall = collision_rectangle(x,y - 16,x - 500,y + 16,WallHitMe,false,false)
if wall != noone
{
	with wall
	{
		instance_create(x,y,PitEnterance);	
	}
}