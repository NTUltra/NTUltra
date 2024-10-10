event_inherited()
if !instance_exists(SurvivalWave) && !scrIsCrown(19)
	TopCont.darkness = 0;
if alarm[5] >  0
{
	with myWazers[0]
	{
		event_perform(ev_alarm,0);	
	}
	with myWazers[1]
	{
		event_perform(ev_alarm,0);	
	}
}


//scrUnlockGameMode(22,"FOR KILLING#THE INVERTED CHESHIRE CAT");

Sleep(200)
scrBossKill();
instance_create(x,y,ChesireCatExplosion);
if UberCont.area == 109
scrDefeatedRequiredBoss(secretChallengeBosses.cheshireCat);
scrDrop(100,0)
scrDrop(100,40)
scrDrop(100,100)

if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(InvertedChesireCat) == 1
with MusCont
{
//optimise sound_discard(song)
//optimise sound_discard(amb)

audio_stop_sound(song);
song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);

audio_sound_gain(song,max(0,UberCont.opt_musvol),0);

audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}

