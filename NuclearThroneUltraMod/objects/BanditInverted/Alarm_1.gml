alarm[1] = 7+random(6)

scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if point_distance(target.x,target.y,x,y) > 30 && point_distance(target.x,target.y,x,y) < 180  //48 original
{
if random(2) < 1
{
snd_play(sndEnemyFire)
wkick = 4
gunangle = point_direction(x,y,target.x,target.y)
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.gunangle+random(20)-10,3.3)
image_angle = direction
team = other.team
}
alarm[1] = 3+random(6)}//20+random(5)
else
{direction = point_direction(x,y,target.x,target.y)+random(180)-90
speed = 0.4
walk = 1+random(2)//10+random(10)
gunangle = point_direction(x,y,target.x,target.y)}

}
else
{
direction = point_direction(target.x,target.y,x,y)+random(20)-10
speed = 0.4
walk = 5+random(5)
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
walk = 7+random(5)
alarm[1] = walk+2+random(4)
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
walk = 10+random(5)
alarm[1] = walk+5+random(20)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

