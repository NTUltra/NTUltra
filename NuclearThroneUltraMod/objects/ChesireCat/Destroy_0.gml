event_inherited()

if alarm[5] >  0
{
	with myWazer
	{
		event_perform(ev_alarm,0);	
	}
}

Sleep(200)
scrBusinessHogGoldChest();
instance_create(x,y,ChesireCatExplosion);
scrDefeatedRequiredBoss(secretChallengeBosses.chesireCat);
scrDrop(100,0)
scrDrop(20,0)
scrDrop(50,40)
scrDrop(50,100)

if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(ChesireCat) == 1
with MusCont
{
//optimise sound_discard(song)
//optimise sound_discard(amb)

audio_stop_sound(song);
song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}


with Marker
        {
        
        if other.id=target.id
        {
        with Player
        {
        chesirecatmarked=true;
        }
        }
        
        }


