if dropItem
{
scrDrop(40,0)
scrDrop(100,0)
}
if UberCont.area == 3 || UberCont.area == 106 || UberCont.area == 142 || instance_exists(PitNavigation)
	scrDefeatedRequiredBoss(secretChallengeBosses.bigAssassin);
scrBossKill();
event_inherited()

with MovingCorpse
{
//Big Assassins corpse doesnt move
if mask_index=other.mask_index
speed=0;

}
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(AssassinBoss) == 1 && !instance_exists(PitNavigation)
	with MusCont
	{
		//optimise sound_discard(song)
		//optimise sound_discard(amb)

		scrStopSong();
		song = musUltraBossWin
		snd_play_2d(song)
		//snd_loop(amb)

		audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);

		audio_sound_gain(song,max(0,UberCont.opt_musvol),0);

		audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

		//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

	}

