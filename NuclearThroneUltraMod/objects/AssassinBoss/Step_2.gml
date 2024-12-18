/// @description Fakeded

// Inherit the parent event
if fakeded > 0
{
	fakeded --;
	if sprite_index != spr_fake
		sprite_index = spr_dead;
	if fakeded <= 0
	{
		fakeded = -1;
		depth -= 2;
		mask_index = mskBandit;
		team = 1;
		maxhealth *= 0.8;
		my_health = maxhealth;
		aggression = 0;
		// EnemyHealthAdjustments();
		run = false;
		alarm[1] = 60;
		snd_play_2d(sndAssassinGetUp)
		sprite_index = spr_respawn;
		spr_idle = spr_respawn;
		spr_walk = spr_respawn;
		mask_index = mskPickupThroughWall;
		image_index = 0;
		alarm[3] = image_number/image_speed;
		alarm[7] = alarm[3] + afterImageDelay;
		if !audio_is_playing(musAssassinBoss) && !instance_exists(SurvivalWave)
		{
			with MusCont
			{
				if audio_is_playing(song)
					audio_stop_sound(song);
				song = musAssassinBoss;
				snd_loop(song)
				audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
			}
		}
	}
	if instance_number(enemy) - instance_number(IDPDVan) - instance_number(InvertedAssassinBoss) <= 4
	{
		raddrop = 0;
		dropItem = false;
		instance_destroy();
	}
}
else
{
	event_inherited();
}
