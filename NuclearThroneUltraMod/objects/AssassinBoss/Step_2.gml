/// @description Fakeded

// Inherit the parent event
if fakeded > 0
{	debug(fakeded);
	fakeded --;
	my_health = maxhealth;
	if sprite_index != spr_fake
		sprite_index = spr_dead;
	if fakeded <= 0
	{
		mask_index = mskBandit;
		my_health = maxhealth;
		EnemyHealthAdjustments();
		snd_play_2d(sndAssassinGetUp)
		sprite_index = spr_respawn;
		if !audio_is_playing(musAssassinBoss) && !instance_exists(SurvivalWave)
		{
			with MusCont
			{
				if audio_is_playing(song)
					audio_stop_sound(song);
				song = musAssassinBoss;
				snd_loop(song)
				audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);
			}
		}
	}
}
else
{
	event_inherited();
}
