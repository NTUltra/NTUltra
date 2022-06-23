
if(image_xscale<0.5)
{instance_destroy();}
if resetSpeed{
speed=0;
motion_add(originalDirection,7)
resetSpeed=false;
friction=0;}

speed+=1.8;

if instance_exists(Player)
{
    if Player.race=11
    {
    speed+=0.5;
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
}
else if(speed>12)
{speed=12;}

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
if( (collision_point(x+lengthdir_x(4,originalDirection+20),y+lengthdir_y(4,originalDirection+20),Wall,false,true))&&(collision_point(x+lengthdir_x(4,originalDirection-20),y+lengthdir_y(4,originalDirection-20),Wall,false,true)) ){
instance_destroy();
}


