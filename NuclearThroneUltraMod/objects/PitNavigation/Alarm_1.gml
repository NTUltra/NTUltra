/// @description Next area
if instance_exists(Player)
{
	var ar = currentArea;
	switch (ar)
	{
		case 127:
		//INV Graveyard to INV mansion
			with MusCont
			{
				if audio_is_playing(song)
				{
					audio_stop_sound(song);	
				}
				if audio_is_playing(amb)
				{
					audio_stop_sound(amb);	
				}
				song = musUltraInvertedRoute;
				amb = ambUltra138;
				snd_loop(song);
				snd_loop(amb);
				audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
			    audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
			    audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
			}
			instance_create(x,y,Acid);
			alarm[3] = 60;
		break;
		case 125:
		//INV mansion to inv scrapyard
			currentArea = 106;
			with Player
			{
				hard += 1;	
			}
			event_user(0);
		break;
		case 106:
		//inv scrapyard to inv caves
			currentArea = 111;
			event_user(0);
		break;
		case 111:
		//inv caves to inv mushroom
			currentArea = 124;
			event_user(0);
		break;

		case 124:
			//INV mush to inv volc
			currentArea = 108;
			event_user(0);
		break;
		case 108:
		//Inv volc to inv Labs
			currentArea = 112;
			event_user(0);
		break;
		case 112:
		//Inv Labs to inv froz
			currentArea = 107
			with Player
			{
				hard += 1;	
			}
			event_user(0);
		break;
		case 107:
			with CorpseCollector
			{
				with instance_nearest(px,py,Wall)
				{
					other.x = x + 8;
					other.y = y + 8;
				}
				if !instance_exists(Portal)
					with instance_create(x,y,Portal) {
						typ = 1;
						inverted = false;
						byPassCheck = true;
					}
			}
			scrEndBossMusic();
			with Player
			{
				portalEssence += 3
				if voidChallengeGoing[0]
					portalEssence += 3;
				inverted = false;
				area = 9;
				subarea = 1;
				lastarea = 9;
				lastsubarea = 1;
			}
			instance_destroy();
		break;
	}
}
else
{
	alarm[1] = 10;	
}