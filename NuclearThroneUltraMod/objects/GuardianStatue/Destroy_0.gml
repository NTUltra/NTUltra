if my_health < maxhealth
{
if !instance_exists(BecomeThrone2) && !instance_exists(Throne2)
with MusCont
{
audio_stop_all()
//optimise sound_discard(song)
//optimise sound_discard(amb)
song = mus100b;
scrPlaySong()
scrPlayAmbience()
audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);

audio_sound_gain(song,max(0,UberCont.opt_musvol),0);

audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
}


with GuardianStatue
{
if id != other.id
instance_destroy()}

}

with instance_create(x,y,CrownGuardian)
{
	if instance_exists(Player)
	{
		if Player.skill_got[29]//insomnia
		{
			alarm[1] += 20;
			scrGiveSnooze(0);
		}
	}	
}

//with CrownPickup
//instance_destroy()



