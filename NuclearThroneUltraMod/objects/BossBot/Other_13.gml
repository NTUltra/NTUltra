/// @description Fire gun 2
if instance_exists(target) && target > -1
{
	gunangle = point_direction(x,y,target.x,target.y);
	snd_play(sndShotgun)
	var ang = gunangle - 70;
	repeat(3)
	{
		with instance_create(x,y,EnemyBullet3)
		{
			friction = 0.28;
			motion_add(ang,11)
			image_angle = direction
			team = other.team
		}
		ang += 40;
	}
	BackCont.shake += 1
	bwkick = 8;
}
fireSecondary = false;