/// @description AI

//to fire clicked = 1

alarm[1] = 6+random(5)

scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if instance_exists(Player)
if scrMeleeWeapons(Player.wep) && random(2)<1
{
motion_add(point_direction(x,y,target.x,target.y),2)
walk = 8+random(3);
if point_distance(target.x,target.y,x,y) < 64 && random(wep_load[Player.wep]+1) < 3
{
gunangle = point_direction(x,y,target.x,target.y)

//fire
scrYouFire();


alarm[1] = wep_load[Player.wep]*0.6+1;

motion_add(point_direction(x,y,target.x,target.y)+180,3)

}

}
else if point_distance(target.x,target.y,x,y) > 8
{
if random(wep_load[Player.wep]+1) < 2.5 && point_distance(target.x,target.y,x,y) < 200
{
gunangle = point_direction(x,y,target.x,target.y)

//fire
scrYouFire();


alarm[1] = wep_load[Player.wep]*0.6+2;
if random(3)<1
{
speed=3;
walk=alarm[1];
direction=random(360);
}

}
else
{direction = point_direction(x,y,target.x,target.y)+random(180)-90
speed = 3
walk = 2+random(10)
gunangle = point_direction(x,y,target.x,target.y)
alarm[1] = 1+random(4)}

}
else
{
motion_add(point_direction(target.x,target.y,x,y)+random(20)-10,0.8)
walk = 8+random(12)
gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(5)<1
{
motion_add(point_direction(x,y,target.x,target.y),0.4)
mp_potential_step(target.x,target.y,2,false)
walk=10+random(20);
alarm[1] = walk+4+random(10)
}
else if random(4)<1
{
motion_add(random(360),0.4)
walk = 5+random(10)
alarm[1] = walk+5+random(10)
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

