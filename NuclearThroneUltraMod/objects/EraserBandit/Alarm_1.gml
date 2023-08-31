//PRE LOOP
alarm[1] = 10+random(10)

scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if point_distance(target.x,target.y,x,y)<128
{
//Fire
if random(2) < 1
{
wkick = 6

gunangle = point_direction(x,y,target.xprevious,target.yprevious)

snd_play(sndEraser)
with instance_create(x,y,EnemyEraserBurst)
{
mox=other.target.xprevious;
moy=other.target.yprevious;
creator = other.id
ammo = 12
time = 1
team = other.team
event_perform(ev_alarm,0) 
}


alarm[1] = 10+random(10)
}
else
{
direction = point_direction(target.x,target.y,x,y)+random(12)-60
speed = 2
walk = 8+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}

}
else
{
direction = point_direction(target.x,target.y,x,y)+random(20)-10
speed = 1
walk = 4+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(20)<1
{
motion_add(point_direction(x,y,target.x,target.y),0.4)
mp_potential_step(target.x,target.y,0.8,false)
alarm[1] = walk+5+random(4)
}
else
{
motion_add(random(360),0.4)
walk = 5+random(10)
alarm[1] = walk+5+random(6)
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
walk = 5+random(5)
alarm[1] = walk+10+random(5)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

