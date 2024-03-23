if !instance_exists(Player){
instance_destroy(); exit;}

//WKICK
if wkick > 0
wkick -= 1
if wkick < 0
wkick += 1


if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}
var dis = point_distance(x,y,Player.x,Player.y)
if dis > 128//52
{
	if dis > 280
	{
		scrForcePosition60fps();
		x = Player.x;
		y = Player.y;
	}
	else
	{
		mp_potential_step(Player.x,Player.y,1,false)
	}
}
else if target != noone && target>0 && instance_exists(target) && point_distance(x,y,target.x,target.y) < 128
	mp_potential_step(target.x,target.y,3,false)


    if (Player.reload>0)//my partner is shooting
    {
    alarm[4]=10;
    protect=4;
    }



if speed > 4.5
speed = 4.5

if alarm[2]>0 &&reload<1 && target>0 && instance_exists(target)
{

with target
{
	if place_meeting(x,y,PopoShield)
	{
	with other
	exit;
	}
	else if (object_index=CrownGuardian && canfire!=0)
	{
	with other
	exit;
	}
	}

	snd_play(sndPartnerFire,0.05,true);
	gunangle = point_direction(x,y,target.x,target.y)
	wkick = 4

	with instance_create(x,y,PartnerBullet)
	{
	motion_add(other.gunangle+(random(22)-11)*Player.accuracy,12)
	image_angle = direction
	team = other.team
	}
	reload+=3;
}
if reload>0
{
	if UberCont.normalGameSpeed == 60
		reload -= 0.5;
	else
		reload -= 1;
	}
else reload=0;

if alarm[3]>0//move in circles
{
if point_distance(x,y,Player.x,Player.y)>60&random(150)<1//small chance partner comes back(stuck)
mp_potential_step(Player.x,Player.y,0.8,false)

Direction+=20;
xx=Player.x+lengthdir_x(irandom_range(12,16),Direction);
yy=Player.y+lengthdir_y(irandom_range(12,16),Direction);
motion_add(point_direction(x,y,xx,yy),0.8);
}


if instance_exists(projectile)
{
	var t = instance_nearest(x,y,projectile)
	if t.team != team && point_distance(x,y,t.x,t.y) < 64
	{
		motion_add(point_direction(x,y,t.x,t.y),2);
	}
}
