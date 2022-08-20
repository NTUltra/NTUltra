/// @description Spirals

if(image_xscale<0.5)
{instance_destroy();}
if abs(angleDir > 1)
{
	direction += angleDir;
	angleDir -= 0.6*sign(angleDir);
}
speed+=2;
image_angle = direction;
if instance_exists(Player)
{
    if Player.race=11
    {
    speed+=0.5;
    if speed>maxSpeed+3
    {
    speed=maxSpeed+3;
    }
    }
    else if(speed>maxSpeed)
    {speed=maxSpeed;}
	if Player.crown == 23//Crown of speed
	{
		speed += 2;	
	}
	if Player.crown == 24//Crown of sloth
	{
		speed -= 2;	
	}
}
else if(speed>maxSpeed)
{speed=maxSpeed;}

if speed < 2
	instance_destroy();

if(image_xscale<nomscale)
{
image_xscale+=0.031;
image_yscale+=0.031;
}
else
{
image_xscale=nomscale;
image_yscale=nomscale;
}

with instance_create(x+random(8)-4,y+random(16)-8,PlasmaFX)
{
motion_add(other.direction+random(30)-15,random(2))
}

