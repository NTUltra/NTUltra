with projectile {
	if team == other.team
		instance_destroy(id,false);	
}
with DragonDance {
	instance_destroy();	
}
audio_stop_sound(sndDragonLoop)
with MusCont
{

audio_stop_sound(song);
song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);

audio_sound_gain(song,max(0,UberCont.opt_musvol),0);

audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}
snd_play(sndDragonEmerge)
scrBossKill();
scrDrop(100,0)
scrDrop(50,90)

event_inherited()
with myCorpse
{
	speed *= 0.25;	
}
repeat(50){//flame wall of death baby yes 
with instance_create(x,y+96,EnemyIceFlame)
    {
    motion_add(other.direction+random(180)-90,3+random(8))
    image_angle = direction
    team = other.team
    }
}
if audio_is_playing(sndDragonLoop)
audio_stop_sound(sndDragonLoop)


with Hand
{
	if target == other.id || place_meeting(x,y,other.id) || point_distance(x,y,other.x,other.y) < 128
	{
		scrUnlockBSkin(27,"FOR WHACKING#A DRAGON#TO DEATH",0);
	}
}
