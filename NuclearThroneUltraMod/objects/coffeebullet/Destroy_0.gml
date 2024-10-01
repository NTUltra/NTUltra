/// @description Explode into more bullets Coffee mug shards!


// Inherit the parent event
event_inherited();

var am = 3;
var angstep = 360/am;
var ang = direction;
repeat(am)
{
	with instance_create(x,y,Bullet1)
	{
		motion_add(ang,16)
		image_angle = direction
		team = other.team
	}
	ang += angstep;
}
	snd_play(sndExplosionS,0.02,false,true,3,false,true,0.6,false,id,0,96);
	BackCont.shake += 5
	
// Inherit the parent event
event_inherited();

