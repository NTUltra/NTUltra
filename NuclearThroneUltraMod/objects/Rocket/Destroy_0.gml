audio_stop_sound(snd)
if (alarm[11] < 1 || GetPlayerUltramod() != ultramods.rocketBolt)
{
	snd_play(sndExplosionL)
	if !ultramodded
	{
	var ang = direction;
	instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),Explosion)

	instance_create(x,y,Explosion)
	}
	else
	{
		instance_create(x,y,Explosion)
	}
}