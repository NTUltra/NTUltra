/// @description Also fire a nasty missile







// Inherit the parent event
event_inherited();

if !instance_exists(EnemyMissile)
{
	with instance_create(x,y,EnemyMissile)
	{
		team=other.team
		motion_add(random(360),1)
		image_angle=direction;
	}
}
if loops > 0
{
	with instance_create(x,y,EnemyMissile)
	{
		team=other.team
		motion_add(random(360),1)
		image_angle=direction;
	}	
}