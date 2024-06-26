/// @description Explode

// Inherit the parent event
event_inherited();

snd_play(sndExplosionL)
var ang = random(360);
repeat(3)
{
	with instance_create(x+lengthdir_x(8,ang),y+lengthdir_y(8,ang),PopoExplosion)
	{
		dmg = 900;
		team = 3;	
	}
	ang+=360/3;
}