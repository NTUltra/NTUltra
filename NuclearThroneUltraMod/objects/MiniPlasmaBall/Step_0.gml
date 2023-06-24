
if(image_xscale<0.5)
{instance_destroy();}
if resetSpeed{
speed=0;
motion_add(originalDirection,7)
resetSpeed=false;
friction=0;}
var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
speed+=1.8*dt;

if instance_exists(Player)
{
    if Player.race=11
    {
    speed+=0.5*dt;
    if speed>16
    {
    speed=16;
    }
    }
    else if(speed>12)
    {speed=12;}
	if Player.crown == 23//Crown of speed
	{
		speed += 2;	
	}
	if Player.crown == 24 && speed > 10//Crown of sloth
	{
		speed = 10;
	}
}
else if(speed>12)
{speed=12;}

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
if( (collision_point(x+lengthdir_x(4,originalDirection+20),y+lengthdir_y(4,originalDirection+20),Wall,false,true))&&(collision_point(x+lengthdir_x(4,originalDirection-20),y+lengthdir_y(4,originalDirection-20),Wall,false,true)) ){
instance_destroy();
}


