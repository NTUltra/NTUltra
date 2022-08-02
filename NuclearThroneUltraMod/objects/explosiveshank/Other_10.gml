/// @description Hit!

// Inherit the parent event
event_inherited();
var hitGuy = hitEntities[array_length(hitEntities)-1];
hitEnemy = true;
with hitGuy
{
	BackCont.shake += 5
	snd_play(sndExplosion);
	instance_create(x,y,Explosion);
}