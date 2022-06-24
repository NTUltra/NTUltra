
if(image_xscale<0.6)
{instance_destroy();}
if resetSpeed{
speed=0;
motion_add(originalDirection,7)
resetSpeed=false;
friction=0;}

if instance_exists(Player)
{
    if Player.race=11
    {
    speed+=0.5;
    if speed>5
    {
    speed=5;
    }
    }
    else if(speed>4)
    {speed=4;}
	if Player.crown == 23//Crown of speed
	{
		speed += 2;	
	}
	if Player.crown == 24//Crown of sloth
	{
		speed -= 2;	
	}
}
else if(speed>4)
{speed=4;}



if(image_xscale<1)
{
image_xscale+=0.1;
image_yscale+=0.1;
}
else
{
image_xscale=1;
image_yscale=1;
}
if( (collision_point(x+lengthdir_x(4,originalDirection+20),y+lengthdir_y(4,originalDirection+20),Wall,false,true))&&(collision_point(x+lengthdir_x(4,originalDirection-20),y+lengthdir_y(4,originalDirection-20),Wall,false,true)) ){
instance_destroy();
}



