dir = random(360)
scrDrop(100,20);
scrDrop(100,0);
scrEnemyDeathEvent();
Sleep(50)
/// @description Spectacular
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(object_index) == 1
with MusCont {
	audio_stop_sound(song)
	if instance_exists(Player) 
	{
		if Player.area == 2
			song = mus6;
		else if Player.area == 110
			song = musUltraInvertedSewers;
		else if Player.area == 10
			song = mus10;
	}
	snd_loop(song)
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
	audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
}
snd_play_2d(snd_dead);
if !morphMe
with instance_create(x,y,BallMomExplode)
{
	sprite_index = other.spr_dying;
	team = other.team;	
}


BackCont.shake += 10

repeat(3)
{
with instance_create(x,y,ExploderExplo)
motion_add(random(360),random(2)+2)
}

scrUnlockCharacter(23,"FOR KILLING MOTHER!#THAT'S KINDA GRIM")