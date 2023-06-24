

if BackCont.shake < 2
BackCont.shake = 2

if(image_xscale<0.5)
{instance_destroy();}
var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
speed+=2*dt;
image_angle = direction;


if instance_exists(Player)
{
    if Player.race=11
    {
    speed+=0.5*dt;
    if speed>maxSpeed+2
    {
    speed=maxSpeed+2;
    }
    }
    else if(speed>6)
    {speed=6;}
	if Player.crown == 23//Crown of speed
	{
		speed += 2;	
	}
}
else if(speed>maxSpeed)
{speed=maxSpeed;}

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

with instance_create(x+random(16)-8,y+random(32)-16,PlasmaFX)
{
	motion_add(other.direction+random(30)-15,random(2))
	image_xscale+=0.1;
	image_yscale+=0.1;
}

