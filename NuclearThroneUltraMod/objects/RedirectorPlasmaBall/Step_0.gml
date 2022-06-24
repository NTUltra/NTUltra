/// @description REDIRECT


if(image_xscale<0.5)
{instance_destroy();}
if resetSpeed{
speed=0;
motion_add(originalDirection,maxspeed)
resetSpeed=false;
friction=0;}

if instance_exists(Player)
{
    if Player.race=11
    {
    speed+=0.5;
    if speed>maxspeed+3
    {
    speed=maxspeed+3;
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
image_xscale+=0.032;
image_yscale+=0.032;
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
maxspeed = 16;
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