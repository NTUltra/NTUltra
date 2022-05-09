///AI
if instance_exists(Player)
{
if Player.loops>0
{//LOOP

alarm[1] = 8+random(12);

scrTarget()
if target > 0
{
if point_distance(target.x,target.y,x,y) > 32 && point_distance(target.x,target.y,x,y) < maxDetectRange + 20
{
if random(2) < 1 && point_distance(target.x,target.y,x,y) < 180
{
gunangle = point_direction(x,y,target.x,target.y)
snd_play(sndEnemyFire)
wkick = 4
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(other.gunangle+random(20)-10,4.5)
	image_angle = direction
	team = other.team
}
alarm[1] = 5+random(5)}
else
{direction = point_direction(x,y,target.x,target.y)+random(180)-90
speed = 0.4
walk = 10+random(10)
gunangle = point_direction(x,y,target.x,target.y)}

}
else
{
direction = point_direction(target.x,target.y,x,y)+random(20)-10
speed = 0.4
walk = 40+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1

}
else if random(10) < 1
{
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}












}
else
{//PRE LOOP
alarm[1] = 20+random(10)

scrTarget()
if target > 0
{
if point_distance(target.x,target.y,x,y) > 48 && point_distance(target.x,target.y,x,y) < maxDetectRange
{
if random(4) < 1
{
snd_play(sndEnemyFire)
wkick = 4
if choose(false,true)
	gunangle = point_direction(x,y,target.x,target.y)
with instance_create(x,y,EnemyBullet1Square)
{
motion_add(other.gunangle+random(20)-10,4)
image_angle = direction
team = other.team
}
alarm[1] = 20+random(5)}
else
{direction = point_direction(x,y,target.x,target.y)+random(180)-90
speed = 0.4
walk = 10+random(10)
gunangle = point_direction(x,y,target.x,target.y)}

}
else
{
direction = point_direction(target.x,target.y,x,y)+random(20)-10
speed = 0.4
walk = 40+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1

}
else if random(10) < 1
{
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}


}

}
else
{//PRE LOOP
alarm[1] = 20+random(10)

scrTarget()
if target > 0
{
if point_distance(target.x,target.y,x,y) > 48 && point_distance(target.x,target.y,x,y) < maxDetectRange
{
if random(4) < 1
{
snd_play(sndEnemyFire)
wkick = 4
if choose(false,true)
	gunangle = point_direction(x,y,target.x,target.y)
with instance_create(x,y,EnemyBullet1Square)
{
motion_add(other.gunangle+random(20)-10,4)
image_angle = direction
team = other.team
}
alarm[1] = 20+random(5)}
else
{direction = point_direction(x,y,target.x,target.y)+random(180)-90
speed = 0.4
walk = 10+random(10)
gunangle = point_direction(x,y,target.x,target.y)}

}
else
{
direction = point_direction(target.x,target.y,x,y)+random(20)-10
speed = 0.4
walk = 40+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1

}
else if random(10) < 1
{
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}


}