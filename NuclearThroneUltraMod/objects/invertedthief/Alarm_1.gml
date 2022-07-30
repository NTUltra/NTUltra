//PRE LOOP
alarm[1] = 20+random(10)


//LOOP
if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 5+random(5);
}

scrTarget()
if stolen>0
{

mp_potential_step(instance_furthest(x,y,Floor).x,instance_furthest(x,y,Floor).y,3,false);
walk=alarm[1]-random(10);
stolen--;

if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if point_distance(target.x,target.y,x,y) > 48
{
if random(12) < 1
{
snd_play(sndEnemyFire)
wkick = 4
gunangle = point_direction(x,y,target.x,target.y)
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.gunangle+random(20)-10,4)
image_angle = direction
team = other.team
}

alarm[1] = 20+random(5)}
else if !(x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))//outside screen move towards
{
walk = 10+random(10)
motion_add(point_direction(x,y,target.x,target.y),0.8);
mp_potential_step(target.x,target.y,3,false);
}
else if random(12)<1
{//stand still
alarm[1]=15+random(15);
gunangle = point_direction(x,y,target.x,target.y)
}
else
{//attack
gunangle = point_direction(x,y,target.x,target.y)
walk = 20+random(20)
motion_add(point_direction(x,y,target.x,target.y),0.8);
mp_potential_step(target.x,target.y,2,false);
}
}
else
{
direction = point_direction(x,y,target.x,target.y)
speed = 5
walk = 40+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1
}//wall in da way?
else if random(20) < 1
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
else{//make your way around the wall
motion_add(point_direction(x,y,target.x,target.y),0.8);
mp_potential_step(target.x,target.y,3,false);
walk = 10+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}
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

