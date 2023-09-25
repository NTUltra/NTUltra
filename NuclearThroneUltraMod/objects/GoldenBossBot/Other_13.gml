/// @description Fire sword 2
if instance_exists(target) && target != noone
{
	snd_play(sndSword2);
	gunangle = point_direction(x,y,target.x,target.y);
	with instance_create(x,y,EnemySlash)
	{
		sprite_index = sprEnemyGoldenSlash;
		image_angle = other.gunangle
		motion_add(other.gunangle+10,2)
		team = other.team
	}
	BackCont.shake += 1
	wepangle2 = -wepangle2
}
fireSecondary = false;