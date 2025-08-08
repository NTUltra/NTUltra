/// @description Spawn projectiles

if owner != -1 && instance_exists(owner) && owner.my_health > 0
{
	if typ == 3
	{
		with instance_create(x,y,GuardianSquareBullet) {
			team = other.team
			motion_add(other.direction, other.speed)
			image_angle = direction;
		}
	}
	else
	{
		with instance_create(x,y,GuardianBullet) {
			team = other.team
			motion_add(other.direction, other.speed);
			image_angle = direction;
		}
	}
}

instance_destroy();