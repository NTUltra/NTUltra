/// @description REDIRECT


if(image_xscale<0.5)
{instance_destroy();}
if resetSpeed{
speed=0;
motion_add(originalDirection,maxSpeed)
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
}
else if(speed>maxSpeed)
{speed=maxSpeed;}



if(image_xscale<nomscale)
{
if UberCont.normalGameSpeed == 60
	{
		image_xscale += 0.016;
		image_yscale += 0.016;
	}
	else
	{
		image_xscale += 0.032;
		image_yscale += 0.032;
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

with instance_create(x+random(8)-4,y+random(16)-8,PlasmaFX)
{
	sprite_index = sprRedirectorPlasmaEffect;
	motion_add(other.direction+random(30)-15,random(2))
}



if instance_exists(Player){
if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
{

//snd_play(sndDirector);


alarm[1]=2;


speed+=12;
maxSpeed = 16;
direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
originalDirection = direction;
resetSpeed = false;
snd_play(sndPlasmaHit,0.1,true)
with instance_create(x,y,PlasmaImpact)
{
	sprite_index = sprRedirectorPlasmaImpact;
}
scrRedirectFx();

nomscale += 0.2;
image_xscale=nomscale
image_yscale=nomscale
turned=true;
}
}

image_angle = direction;