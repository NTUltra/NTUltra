/// @description Explosion
if point_distance(x,y,hit[1],hit[2]) > 16
{
	if !audio_is_playing(sndExplosionS)
		snd_play(sndExplosionS,0.11,true);
	instance_create(hit[1],hit[2],SmallExplosion);
}
alarm[3] = 5;