/// @description SHOTGUN
BackCont.shake += 3;
wkick = 4;
if instance_exists(target) && target != noone
{
	if point_distance(x,y,target.x,target.y) > 170
	{
		snd_play(sndFlakCannon)
		with instance_create(x,y,InvertedEnemyFlakBullet)
		{
			loops = 1;
			motion_add(other.gunangle,14.5);
			image_angle = direction
			team = other.team
		}
	}
	else if point_distance(x,y,target.x,target.y) > 96
	{
		snd_play(sndFlakCannon)
		with instance_create(x,y,InvertedEnemyFlakBullet)
		{
			loops = 1;
			motion_add(other.gunangle,13.5);
			image_angle = direction
			team = other.team
		}
	}
	else
	{
		snd_play(sndShotgun);
		var ang = gunangle - 48;
		repeat(8)
		{
			with instance_create(x, y, EnemyBullet3) {
			    motion_add(ang, 12.8);
			    image_angle = direction
			    team = other.team
			}
			ang += 12;
		}
	}
}