if alarm[11] < 1 || GetPlayerUltramod() != ultramods.rocketBolt
{
	instance_create(x,y,Explosion)
	snd_play(sndExplosionL)
}

