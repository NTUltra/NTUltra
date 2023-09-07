/// @description Boom

var xx = x-(sign(hspeed)*8);
var yy = y-(sign(vspeed)*8);
snd_play(sndExplosionS,0,true);
with instance_create(xx,yy,SmallExplosion)
	dmg --;

// Inherit the parent event
event_inherited();


