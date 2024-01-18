/// @description Small Blood explosion

if (alarm[11] < 1 || GetPlayerUltramod() != ultramods.rocketBolt)
{
	snd_play(sndExplosionS)
	instance_create(x+(hspeed * 0.5),y+(vspeed * 0.5),SmallMeatExplosion)
}