if !sleeping
with instance_create(x,y,EnemyBullet2)
{
motion_add(random(360),4)
image_angle = direction
team = other.team
}

alarm[2] = 2

