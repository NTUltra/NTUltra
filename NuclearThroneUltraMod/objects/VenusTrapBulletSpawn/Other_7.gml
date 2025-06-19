/// @description Spawn projectiles

if owner != -1 && instance_exists(owner) && owner.my_health > 0
{
	if typ == 3
	{
		with instance_create(x,y,GuardianSquareBullet) {
			team = other.team
			motion_add(other.direction, other.speed)
		}
	}
	else
	{
		with instance_create(x,y,VenusRadTrapBullet) {
			team = other.team
			motion_add(other.direction, other.speed)
			image_angle = direction;
			gunAngle = direction;
			startingAngle = gunAngle;
			projectileSpeed = other.projectileSpeed;
			fireDelay = other.fireDelay;
			rotation = other.myRotation;
		}
	}
}

instance_destroy();