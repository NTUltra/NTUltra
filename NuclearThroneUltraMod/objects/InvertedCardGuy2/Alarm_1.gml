alarm[1] = 7+random(7)

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 5+random(5);
}

scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if point_distance(target.x,target.y,x,y) > 48
{
if random(5) < 1 && point_distance(target.x,target.y,x,y) < 200
{

gunangle = point_direction(x,y,target.xprevious,target.yprevious)
snd_play(sndSniperTarget)
alarm[2]=20;
gonnafire=1;

alarm[1] = alarm[2]+random(10)
}
else if random(10)<1
{
direction=point_direction(x,y,target.x,target.y)+180;
speed = 0.4
walk = 5+random(15);
gunangle = point_direction(x,y,target.x,target.y);
}
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
walk = 20+random(10)
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
alarm[1] = walk+10+random(30)
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
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

