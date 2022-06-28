/// @description circle it
if(image_xscale<0.5)
{instance_destroy();}
if abs(angleDir > 1)
{
	direction += angleDir;
	angleDir -= 0.5*sign(angleDir);
}
speed+=1.8;
image_angle = direction;
if instance_exists(Player)
{
    if Player.race=11
    {
    speed+=0.5;
    if speed>maxspeed+2
    {
    speed=maxspeed+2;
    }
    }
    else if(speed>maxspeed)
    {speed=maxspeed;}
	if Player.crown == 23//Crown of speed
	{
		speed += 2;	
	}
	if Player.crown == 24//Crown of sloth
	{
		speed -= 2;	
	}
}
else if(speed>maxspeed)
{speed=maxspeed;}

if(image_xscale<nomscale)
{
image_xscale+=0.03;
image_yscale+=0.03;
}
else
{
image_xscale=nomscale;
image_yscale=nomscale;
}


