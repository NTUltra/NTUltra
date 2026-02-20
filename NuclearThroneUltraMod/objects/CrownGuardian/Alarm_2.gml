canfire = 0
walk = 0;
sprite_index = spr_fire
alarm[1] = 40
if loops > 0 
	alarm[1] = 20
scrAddDrops(1);
scrDrop(20,0);
scrTarget()
if target != noone
gunangle = point_direction(x,y,target.x,target.y)

with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle,4)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle-20,5)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle+20,5)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle-40,5)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle+40,5)
image_angle = direction
team = other.team
}

