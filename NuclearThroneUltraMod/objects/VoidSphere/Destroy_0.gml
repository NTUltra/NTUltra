/// @description Fire out a projectile
if instance_exists(Player)
{
	snd_play(sndVoidSphereFire,0.01);
	var aim = point_direction(Player.x,Player.y,x,y);
	repeat(4)
		with instance_create(x + random_range(12,-12),y + random_range(12,-12),PlutoFX)
		{
			sprite_index = sprVoidBulletTrail;
			image_index = irandom(image_number - 1);
			motion_add(aim + random_range(30,-30),4 + random(4));
		}
	with instance_create(x + lengthdir_x(16,aim+180),y + lengthdir_y(16,aim+180),VoidBlockProjectile)
	{
		image_speed += 0.1;
		motion_add(aim,12);
		friction = 0.2;
	}
}