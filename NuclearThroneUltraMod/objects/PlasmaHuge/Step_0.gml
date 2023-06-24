

if BackCont.shake < 3
BackCont.shake = 3

if(image_xscale<0.45)
{instance_destroy();}
if resetSpeed{
speed=0;
motion_add(originalDirection,7)
resetSpeed=false;
friction=0;}
var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
	

if instance_exists(Player)
{
    if Player.race=11
    {
    speed+=0.5*dt;
    if speed>9
    {
    speed=9;
    }
    }
    else if(speed>6)
    {speed=6;}
	if Player.crown == 23//Crown of speed
	{
		speed += 2;	
	}
	if Player.crown == 24 && speed > 4//Crown of sloth
	{
		speed = 4;
	}
}
else if(speed>6)
{speed=6;}



if(image_xscale<nomscale)
{
if UberCont.normalGameSpeed == 60
	{
		image_xscale += 0.015;
		image_yscale += 0.015;
	}
	else
	{
		image_xscale += 0.03;
		image_yscale += 0.03;
	}
}
else
{
image_xscale=nomscale;
image_yscale=nomscale;
}
if( (collision_point(x+lengthdir_x(4,originalDirection+20),y+lengthdir_y(4,originalDirection+20),Wall,false,true))&&(collision_point(x+lengthdir_x(4,originalDirection-20),y+lengthdir_y(4,originalDirection-20),Wall,false,true)) ){//precise or not?
instance_destroy();
}

with instance_create(x+random(24)-12,y+random(48)-24,PlasmaFX)
{
motion_add(other.direction+random(30)-15,random(2))
image_xscale+=0.2;
image_yscale+=0.2;
}

