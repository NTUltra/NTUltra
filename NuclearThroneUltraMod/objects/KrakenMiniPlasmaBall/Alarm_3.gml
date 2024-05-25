/// @description xxx

// Inherit the parent event
event_inherited();

/// @description particles
alarm[3] = ptime;
if choose(true,false)
{
	with instance_create(x+random(4)-2,y+random(8)-4,PlasmaFX)
	{
	motion_add(other.direction+random(30)-15,random(2))
	image_xscale-=0.1;
	image_yscale-=0.1;
	}
}
else
{
	with instance_create(x,y,FishBoost)
	{
		motion_add(other.direction+random(60)-30,1+random(2));
	}	
}