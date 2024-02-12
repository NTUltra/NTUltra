/// @description EXPLODE WHY NOT

// Inherit the parent event
event_inherited();
snd_play(sndExplosion);
with instance_create(x,y,PurpleExplosion)
{
	team = other.team;
	with myExplosionMask
	{
		image_xscale -= 0.1;
		image_yscale -= 0.1;
	}
}