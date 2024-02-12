scrDrop(100,0);
scrDrop(50,100);
scrDrop(50,25);

with Player
{
if race = 7 
	scrUnlockCSkin(7,"FOR DEFEATING THE INVERTED BIG MACHINE#AS STEROIDS",0); 

}

scrBossKill();

with instance_create(x,y,BigDogExplo)
	visible = false;
snd_play(sndExplosionXL);


with myCore
	instance_destroy();

with InvertedBigMachineLaser
instance_destroy();

with InvertedBigMachineTurret
instance_destroy();


with LabTrap
instance_destroy();

//drop broken ster gun??
if(random(100)<1){//2
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


with MusCont
{
audio_stop_sound(song)

song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);

audio_sound_gain(song,max(0,UberCont.opt_musvol),0);

audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
}
snd_play(sndBossWin);

event_inherited()

