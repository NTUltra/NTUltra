if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(InvertedLilHunter) == 1
with MusCont
{
audio_stop_sound(song);
song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}
scrBossKill();
scrDrop(200,0)
scrDrop(10,2)
instance_create(x,y,Explosion)
if !place_meeting(x,y,Morph)
with instance_create(x,y,InvertedLilHunterDie)
team = other.team
if instance_exists(Player)
Player.kills += 1
else
BackCont.kills += 1
UberCont.ctot_kill[UberCont.race] += 1

snd_play(snd_dead)

Sleep(20+size*15)
if instance_exists(Player)
{
if Player.race = 4
raddrop += 1
}

do {if raddrop > 15
{raddrop -= 10
with instance_create(x,y,BigRad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(other.raddrop/2)+2)
repeat(speed)
speed *= 0.9}}
}
until raddrop <= 15

repeat(raddrop)
{
with instance_create(x,y,Rad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(other.raddrop/2)+2)
repeat(speed)
speed *= 0.9}
}

scrEnemyDeathEvent();
//drop timebomb??
if(random(50)<1){//2
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep = 192
name = wep_name[192]
ammo = 0
type = wep_type[192]
curse = 0
sprite_index = wep_sprt[192]
}}
