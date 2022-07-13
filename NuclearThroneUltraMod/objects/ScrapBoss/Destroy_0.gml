if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(ScrapBoss) == 1
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
//Allow access to vulcano?
	if !instance_exists(BecomeScrapBoss) && instance_number(ScrapBoss) == 1
	with Player
	{
		if my_health >= round(maxhealth*0.5)
		{
			with DragonSkull
			{
				snd_play(sndDragonEmerge,0,false,true,2,false,false,0.7,false,-1,0.8);
				event_user(0);	
			}
		}
		else
		{
			with DragonSkull
			{
				alarm[1] = 0;
				closed = true;
			}
		}
	}
scrDrop(0,100)
scrDrop(0,50)
scrBossKill();
Sleep(50)
with instance_create(x,y,BigDogExplo)
{
	spr_dead = other.spr_dead;
}
event_inherited()

with instance_nearest(x,y,Corpse)
instance_destroy()

//drop IDKWID?
if(random(1000)<1){
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep =75
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}}

