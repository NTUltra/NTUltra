scrDrop(100,0);
scrDrop(100,1);
scrDrop(50,40);

with Player
{
if race = 7  && loops>0
scrUnlockBSkin(7,"FOR DEFEATING THE BIG MACHINE#ON LOOP AS STEROIDS",0); 

}

scrBossKill();

with instance_create(x,y,BigDogExplo)
	visible = false;
snd_play(sndExplosionXL);

mask_index=mskBigMachine;


with BigMachineLaser
instance_destroy();

with BigMachineTurret
instance_destroy();

with BigMachineMask
instance_destroy();

with LabTrap
instance_destroy();

//drop broken ster gun??
if instance_exists(Player)
{
if(random(100)<1&&Player.loops<1){//2
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep = 264
name = wep_name[264]
ammo = 0
type = wep_type[264]
curse = 0
sprite_index = wep_sprt[264]
}}
}
if instance_number(BigMachine) < 2 && !instance_exists(SurvivalWave) && !instance_exists(WantBoss)
{
with MusCont
{
audio_stop_sound(song)

song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
}
snd_play(sndBossWin);
}
event_inherited()

