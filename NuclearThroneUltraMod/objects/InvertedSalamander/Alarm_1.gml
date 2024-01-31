alarm[1] = 15+random(10)
scrTarget()
if target != noone
{
if random(5) < 1 && collision_line(x,y,target.x,target.y,Wall,0,0) < 0 && point_distance(x,y,target.x,target.y) < 310
{
ammo = 40
alarm[2] = 6
angleleft=choose(true,false);

if angleleft
gunangle = point_direction(x,y,target.xprevious,target.yprevious)-12
else
gunangle = point_direction(x,y,target.xprevious,target.yprevious)+12

alarm[1] = 34+random(20)
snd_play(sndSalamanderCharge)
walk=0;
}
else if random(8)<1
{
alarm[1] = 10+random(10)
walk=alarm[1];
motion_add(random(360),0.8);
}
else if random(4)<1
{
alarm[1] = 10+random(30)
walk=alarm[1];
motion_add(point_direction(x,y,target.x,target.y)+random(60)-30,0.8);
}
else if random(5)<1
{
walk = 5+random(15)
alarm[1]=walk+5+random(15);
motion_add(point_direction(x,y,target.x,target.y)+random(120)-60,0.8);
}
else
{
walk = 20+random(30)
motion_add(point_direction(x,y,target.x,target.y)+random(30)-15,0.8);
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(10) < 1
{
motion_add(random(360),0.4)
walk = 10+random(10)
alarm[1] = walk+10+random(30)
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

