ammo -= 1

alarm[0] = time

leftang=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)-60;
rightang=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+60;

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play(sndSeekerWave,0.1,true,false,1,false,false,0.5);


with instance_create(x,y,SeekerBolt)
{motion_add((other.leftang+other.ang)+(random(12)-6)-15*other.creator.accuracy,2+random(3))
image_angle = direction
team = other.team
}

if ang >= 120*creator.accuracy
left=false;
else if ang<=1*creator.accuracy
left=true


if left
ang+=15;
else
ang-=15;


BackCont.viewx2 += lengthdir_x(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 2
creator.wkick += 0.6}


if ammo <= 0
instance_destroy()

