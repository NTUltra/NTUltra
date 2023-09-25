alarm[1] = 15+random(20)

scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if point_distance(target.x,target.y,x,y) < 120
{
if random(3) < 1
{
gunangle = point_direction(x,y,target.x,target.y)+random(20)-10
snd_play(sndMolesargeFire,0.05)
wkick = 8
motion_add(gunangle+180,3)

with instance_create(x,y,EnemyBullet3)
{motion_add(other.gunangle,10+random(2))
image_angle = direction
team = other.team}
with instance_create(x,y,EnemyBullet3)
{motion_add(other.gunangle-15,10+random(2))
image_angle = direction
team = other.team}
with instance_create(x,y,EnemyBullet3)
{motion_add(other.gunangle+15,10+random(2))
image_angle = direction
team = other.team}
with instance_create(x,y,EnemyBullet3)
{motion_add(other.gunangle-30,10+random(2))
image_angle = direction
team = other.team}
with instance_create(x,y,EnemyBullet3)
{motion_add(other.gunangle+30,10+random(2))
image_angle = direction
team = other.team}
alarm[1] = 30+random(5)}
else
{direction = point_direction(x,y,target.x,target.y)+(45+random(90))*choose(1,-1)
speed = 0.4
walk = 10+random(10)
gunangle = point_direction(x,y,target.x,target.y)}

}
else
{
direction = point_direction(x,y,target.x,target.y)+random(20)-10
speed = 0.4
walk = 30+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(4) < 1
{
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+5
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
}
else if random(10) < 1
{
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+5
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

