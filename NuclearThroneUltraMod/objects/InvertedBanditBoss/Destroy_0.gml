if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(InvertedBanditBoss) == 1
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
repeat(2)
scrDrop(100,0)

scrDrop(0,60)
scrBossKill();
//drop golden oopsgun?
if instance_exists(Player)
{
	if(random(400)<1&&Player.loops<1){
	with instance_create(x,y,WepPickup)
	{
	scrWeapons()
	wep = 298
	name = wep_name[298]
	ammo = 0
	type = wep_type[298]
	curse = 0
	sprite_index = wep_sprt[298]
	}}
}
event_inherited()

if oasis && !instance_exists(SurvivalWave)
{
instance_create(x,y,Portal);
with Player
oasis=true;
}
