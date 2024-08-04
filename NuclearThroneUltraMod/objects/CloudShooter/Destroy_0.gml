scrDropNearby(40,15);
scrDropNearby(7,0);
if !sleeping
	with instance_create(x,y,EnemyHomingTriangle)
	{
		motion_add(other.gunangle+random(20)-10,1);
		if GetPlayerLoops() < 1
			homingSpeed = 1.2;
		else
			homingSpeed = 1.25;
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
