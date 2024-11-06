/// @description loop shooting

with instance_create_depth(x,y,depth + 1,proj)
{
	motion_add(other.direction+random(20)-10,3)
	image_angle = direction
	team = other.team
	if team == 2
	{
		if object_index == EnemyBouncerBullet
			sprite_index = sprBullet3
		else
			sprite_index = sprEnemyBullet1Deflected
	}
}



alarm[0]=25;