/// @description circle it
if(image_xscale<0.5)
{instance_destroy();}
var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
if abs(angleDir > 1)
{
	direction += angleDir*dt;
	angleDir -= 0.5*sign(angleDir)*dt;
}

speed+=1.8 * dt;
image_angle = direction;
if instance_exists(Player)
{
    if Player.race=11
    {
    speed+=0.5 * dt;
    if speed>maxSpeed+2
    {
    speed=maxSpeed+2;
    }
    }
    else if(speed>maxSpeed)
    {speed=maxSpeed;}
	if Player.crown == 23//Crown of speed
	{
		speed += 2 * dt;	
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


