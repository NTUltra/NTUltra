/// @description Stop sleeping
if audio_is_playing(sndPandaSleep1)
	audio_stop_sound(sndPandaSleep1);
if audio_is_playing(sndPandaSleep2)
	audio_stop_sound(sndPandaSleep2);

with Player
{
	snd_hurt = sndMutant14Hurt;
	snd_hurt_actual = sndMutant14Hurt;
	spr_idle = other.originalIdle;
	spr_walk = other.originalWalk;
	spr_hurt = other.originalHurt;
	maxSpeed = other.resetSpeed;
	if wep != 0 && other.wep != noone
		wep_sprt[wep] = other.originalWepA;
	if bwep != 0 && other.bwep != noone
		wep_sprt[bwep] = other.originalWepB;
	if cwep != 0 && other.cwep != noone
		wep_sprt[cwep] = other.originalWepC;
}
with PlayerSpawn
{
	spr_idle = other.originalIdle;
	spr_walk = other.originalWalk;
	spr_hurt = other.originalHurt;
}
if wep != noone
	with wep
	{
		snd_play(sndWepReturn,0.1);
		with instance_create(x,y,ThrowWepReturnFX)
		{
			owner = Player.id;
			depth = other.depth - 1;
		}
		instance_destroy(id,false);	
	}
if bwep != noone
	with bwep
	{
		snd_play(sndWepReturn,0.1);
		with instance_create(x,y,ThrowWepReturnFX)
		{
			owner = Player.id;
			depth = other.depth - 1;
		}
		instance_destroy(id,false);	
	}
if cwep != noone
	with cwep
	{
		snd_play(sndWepReturn,0.1);
		with instance_create(x,y,ThrowWepReturnFX)
		{
			owner = Player.id;
			depth = other.depth - 1;
		}
		instance_destroy(id,false);	
	}