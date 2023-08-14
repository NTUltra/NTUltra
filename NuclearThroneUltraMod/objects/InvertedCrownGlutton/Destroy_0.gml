scrDrop(80,0);
scrDrop(100,10);

event_inherited();
scrBossKill();
instance_create(x,y,BigWallBreak);
repeat( 6 + irandom(3))
	with instance_create(x,y,Shell)
	{
		sprite_index = sprCrownParticle;
		motion_add(random(360),3 + random(4));
	}

if object_index == InvertedCrownGlutton
{
	with instance_create_depth(x,y,depth,EnemyCrownOfDeath)
	{
		motion_add(random(360),2);
		walk = 20;
		team = other.team;
		creator = other.id;
	}	
	instance_create(x,y,TheMultiCrown);
}


if instance_number(InvertedCrownGlutton)<=1
{
with MusCont
{
//optimise sound_discard(song)
//optimise sound_discard(amb)

audio_stop_sound(song);
song = musBossDead
snd_play(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}
snd_play(sndVaultBossWin);
}

if instance_exists(Wall) && !instance_exists(WallRemover)
{
	instance_create(x,y,WallRemover);	
}