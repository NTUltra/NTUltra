/// @description Fire gun 2
if instance_exists(target) && target > -1
{
	gunangle = point_direction(x,y,target.x,target.y);
	snd_play(sndCuber)
	var ang = gunangle + 30;
	with instance_create(x,y,EnemyHomingTriangle)
	{
		motion_add(ang,1.6)
		homingSpeed = 1.3;
		image_angle = direction
		team = other.team
	}
	ang += 40;
	BackCont.shake += 1
	bwkick = 8;
}
fireSecondary = false;