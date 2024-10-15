/// @description BULLET SPAM
if speed > 3
{
	alarm[2] = 2;
	with instance_create(x,y,EnemyBullet1Square)
	{
		sprite_index = sprIDPDSquareBullet;
		onlyHitPlayerTeam = true;
		image_index = 0;
		motion_add(other.direction + 110,4);
		image_angle = direction
		team = other.team
		if other.dropFreaks
			isVenomized = true;
	}
	with instance_create(x,y,EnemyBullet1Square)
	{
		sprite_index = sprIDPDSquareBullet;
		onlyHitPlayerTeam = true;
		image_index = 0;
		motion_add(other.direction - 110,4);
		image_angle = direction
		team = other.team
		if other.dropFreaks
			isVenomized = true;
	}
}