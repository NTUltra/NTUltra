if object_index == CloudShooter
	scrDropNearby(40,15);
if !sleeping
	with instance_create(xprevious,yprevious,EnemyHomingTriangle)
	{
		motion_add(other.gunangle+random(20)-10,1.5);
		alarm[3] -= other.homingTimeAdjustment;
		homingSpeed = other.homingSpeed;
		image_angle = direction
		team = other.team
	}
var dir = random(360);
repeat(6)
{
	with instance_create(x,y,AcidStreak)
	{
		motion_add(dir,12)
		image_angle = direction
	}
	dir += 60
}
