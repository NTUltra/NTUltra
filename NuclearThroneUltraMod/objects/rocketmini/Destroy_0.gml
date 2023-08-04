/// @description Small explosion
if (alarm[11] < 1 || GetPlayerUltramod() != ultramods.rocketBolt)
{
	snd_play(sndExplosionS)
	instance_create(x+hspeed,y+vspeed,SmallExplosion)
}