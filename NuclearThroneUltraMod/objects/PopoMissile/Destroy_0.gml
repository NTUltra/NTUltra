audio_stop_sound(snd)

snd_play(sndIDPDNadeExplo)

with instance_create(x,y,PopoExplosion)
{
	team=other.team;
	if team == 2
	{
		sprite_index = sprPopoNadeRogue;
	}
	with myExplosionMask
	{
		team = other.team;	
	}	
}