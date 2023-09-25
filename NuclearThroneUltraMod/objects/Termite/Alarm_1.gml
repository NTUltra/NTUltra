alarm[1] = 1+random(2)


if !instance_exists(target)
target = -1
if target = -1
{
if instance_exists(enemy)
target = instance_nearest(x,y,enemy)
}



if target != noone
{

//GOT A TARGET
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) < 600
{
maxSpeed=7;
motion_add(point_direction(x,y,target.x,target.y),3)
mp_potential_step(target.x,target.y,2,false)

walk=4;
alarm[1]=walk;

/*if target.x < x
right = -1
else if target.x > x
right = 1*/
}
else{//CANT SEE TARGET
maxSpeed=4;
if random(4) < 3
{
//CANT SEE TARGET
target = -1
motion_add(random(360),0.4);
walk = 4+random(2)
alarm[1] = walk+2
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else if random(4) < 3
{
motion_add(point_direction(x,y,target.x,target.y),0.8)
walk = 4+random(8)
alarm[1] = walk;
}
else{
alarm[1]=5+random(10);
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
}
}
else if random(8) < 2
{
//GOT NO TARGET
//alarm[0]=20+random(40);

walk = 3+random(3)
alarm[1] = walk+4+random(40);
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else{
alarm[1]=30+random(60);
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

/* */
/*  */
