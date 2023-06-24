

if BackCont.shake < 2
BackCont.shake = 2

if(image_xscale<0.5)
{instance_destroy();}

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
		speed += 2*dt;	
	}
	if Player.crown == 24 && speed > 4.5//Crown of sloth
	{
		speed = 4.5
	}
}
else if(speed>6)
{speed=6;}

if(image_xscale<nomscale)
{
	if UberCont.normalGameSpeed == 60
	{
		image_xscale += 0.01;
		image_yscale += 0.01;
	}
	else
	{
		image_xscale += 0.02;
		image_yscale += 0.02;
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

with instance_create(x+random(16)-8,y+random(32)-16,PlasmaFX)
{
	sprite_index = sprBouncerPlasmaEffect;
motion_add(other.direction+random(30)-15,random(2))
image_xscale+=0.1;
image_yscale+=0.1;
}

image_angle = direction;