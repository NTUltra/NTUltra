/*with instance_create(x,y,EnemyBullet2)
{
motion_add(other.direction,4)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.direction+20,4)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.direction-20,4)
image_angle = direction
team = other.team
}*/
repeat(6){
with instance_create(x,y,EnemyBullet3)
{
motion_add(other.direction+random(30)-15,8+random(5))
image_angle = direction
team = other.team
}}

with instance_create(x,y,EnemyBullet5)
{motion_add(other.direction+random(12)-6,7)
team = other.team
image_angle = direction}

/* */
/*  */

if getFrosty
{
	repeat(2)
	{
		direction += 180;
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(other.direction-12,6.5)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(other.direction+12,6.5)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(other.direction-6,7)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(other.direction+6,7)
			image_angle = direction
			team = other.team
		}
	}
}
