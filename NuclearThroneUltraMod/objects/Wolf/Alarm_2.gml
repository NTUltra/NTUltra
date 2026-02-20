with instance_create(x,y,EnemyBullet1)
{
motion_add(other.direction,4.25)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.direction+20,4.25)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.direction-20,4.25)
image_angle = direction
team = other.team
}
if getFrosty
{
	repeat(2)
	{
		direction += 180;
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(other.direction-12,6)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(other.direction+12,6)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(other.direction-6,6.5)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(other.direction+6,6.5)
			image_angle = direction
			team = other.team
		}
	}
}
