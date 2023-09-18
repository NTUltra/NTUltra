scrDrop(100,0);
scrDrop(50,0);

event_inherited()
with Player
{
	curse = 0;
	bcurse = 0;
	ccurse = 0;
}
if UberCont.area == 126 || UberCont.area == 127
	scrDefeatedRequiredBoss(secretChallengeBosses.bigFish);
with myCorpse
{
	alarm[0] += 60;//Wait a little longer with spawning a portal	
}
scrBossKill();
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(GraveyardFish) == 1
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
with InactiveRerollStation
{
	instance_create(x,y,Flicker);
	instance_destroy();
	instance_create(x,y,RerollStation);
}