/// @description Spawn some guardians brotherfriend

// Inherit the parent event
event_inherited();

var ang = random(360)

repeat(10)
{with instance_create(x,y,Dust)
motion_add(ang,3)
ang += 36}
snd_play(sndExplosionXL);
snd_play(sndExplosionXL);
instance_create(x,y,GreenExplosion);
var ang = random(360);
var l = 32;
var angstep = 120;
repeat(3)
{
	with instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),GreenExplosion) {
		team = other.team;	
	}
	ang += angstep;
}
