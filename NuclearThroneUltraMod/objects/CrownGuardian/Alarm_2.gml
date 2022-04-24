canfire = 0
sprite_index = spr_fire
alarm[1] = 110
if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 55
}
scrDrop(20,0);
scrTarget()
if target > 0
gunangle = point_direction(x,y,target.x,target.y)

with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle,4)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle-20,4)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle+20,4)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle-40,4)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle+40,4)
image_angle = direction
team = other.team
}

