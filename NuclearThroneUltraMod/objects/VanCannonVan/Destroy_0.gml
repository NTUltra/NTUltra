/// @description Explode

// Inherit the parent event
event_inherited();
if image_xscale >= 0.8
{
	snd_play(sndExplosionL)
	var ang = random(360);
	repeat(3)
	{
		instance_create(x+lengthdir_x(8,ang),y+lengthdir_y(8,ang),RogueExplosion)
		ang+=360/3;
	}
}