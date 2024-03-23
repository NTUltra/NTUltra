if !instance_exists(Player){
instance_destroy(); exit;}

alarm[1] = 1+random(3)


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
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) < 200
{
	if random(7) < 5
	{
	//FIRE
	alarm[2]=15;
	}
	else if random(7)<5-protect
	{

	//DONT FIRE
	direction = point_direction(x,y,target.x,target.y)+random(180)-90
	speed = 0.5

	motion_add(point_direction(x,y,target.x,target.y),0.8)
	mp_potential_step(target.x,target.y,1,false)
	//if instance_exists(Player) and random(4) < 3
	//{
	//motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.8)
	//motion_add(point_direction(x,y,Player.x,Player.y),1)
	//}

	walk = 5+random(5)
	previousgunangle=gunangle;
	gunangle = point_direction(x,y,target.x,target.y)
	}
	else{
	direction=point_direction(x,y,Player.x,Player.y);
	alarm[3]=20;
	}
	if target.x < x
	right = -1
	else if target.x > x
	right = 1
}
else if random(4) < 3
{
//CANT SEE TARGET
if (random(7)<5-protect){
mp_potential_step(target.x,target.y,1,false)
motion_add(point_direction(x,y,target.x,target.y),0.8)}
else
{
direction=point_direction(x,y,Player.x,Player.y);
alarm[3]=20;
}
/*if instance_exists(Player)
{
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.8)
motion_add(point_direction(x,y,Player.x,Player.y),1)
}*/
walk = 2+random(2)
alarm[1] = walk+2
previousgunangle=gunangle;
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else if random(6)<5
target = -1;//reset target
}
else if random(3) < 1
{
//GOT NO TARGET
alarm[3]=20;
walk = 3+random(3)
alarm[1] = walk+2
previousgunangle=gunangle;
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}


/* */
/*  */
