if !instance_exists(SurvivalWave) && !instance_exists(PitNavigation)  && !instance_exists(ThePit)&& !instance_exists(WantBoss) && instance_number(LilHunter) == 1 && !instance_exists(LilHunterFly)
{
	with MusCont
	{
	scrStopSong();
	song = musUltraBossWin
	snd_play_2d(song)
	//snd_loop(amb)

	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);

	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);

	audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

	//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

	}
}
if instance_exists(ThePit)
{
	with MusCont {
		scrStopSong()
		song = musUltraThePit;
		scrPlaySong()
		audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
		audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
	}
}
scrBossKill();
scrDrop(200,0)
scrDrop(20,40)
instance_create(x,y,Explosion)
if morphMe == 0
with instance_create(x,y,LilHunterDie)
team = other.team
if instance_exists(Player)
Player.kills += 1
else
BackCont.kills += 1
UberCont.ctot_kill[UberCont.race] += 1

snd_play(snd_dead)

Sleep(20+mySize*15)

with UberCont
{
	if !unlocked_alt_routes && !about_to_unlock_alt_routes
	{
		about_to_unlock_alt_routes = true;
		scrSave();
	}
}
scrEnemyDeathEvent();
