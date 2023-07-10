/// @description Fire
if target > -1 && instance_exists(target)
{
	walk = 0;
	speed = 0;
	sprite_index = spr_fire;
	var aimDir = point_direction(x,y,target.x,target.y);
	with instance_create(
	x - lengthdir_x(8,aimDir),
	y - lengthdir_y(8,aimDir),
	InvertedGuardianBulletSpawn)
	{	
		typ = 3;
		sprite_index = sprInvertedGuardianSquareBulletSpawn;
		team = other.team;
		owner = other.id;
		motion_add(aimDir, other.projectileSpeed);
	}
	snd_play(sndNothingSmallball,0.2);
	alarm[2] = 5;
	alarm[1] += 10;
}