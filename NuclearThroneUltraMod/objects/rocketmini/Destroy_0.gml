/// @description Small explosion
if (alarm[11] < 1 || GetPlayerUltramod() != ultramods.rocketBolt)
{
	snd_play(sndExplosionS)
	instance_create(x+lengthdir_x(12,direction),y+lengthdir_y(12,direction),SmallExplosion)
}