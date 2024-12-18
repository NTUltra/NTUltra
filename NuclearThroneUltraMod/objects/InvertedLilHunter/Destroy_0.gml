if !instance_exists(SurvivalWave) && !instance_exists(PitNavigation)  && !instance_exists(ThePit) && !instance_exists(WantBoss) && instance_number(InvertedLilHunter) == 1 && !instance_exists(InvertedLilHunterFly)
{
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
}
if instance_exists(ThePit)
{
	with MusCont {
		audio_stop_sound(song)
		song = musUltraThePit;
		snd_loop(song)
		audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
		audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
	}
}
scrBossKill();
scrDrop(200,0)
scrDrop(20,45)
instance_create(x,y,Explosion)
if morphMe == 0
with instance_create(x,y,InvertedLilHunterDie)
team = other.team
if instance_exists(Player)
Player.kills += 1
else
BackCont.kills += 1
UberCont.ctot_kill[UberCont.race] += 1

snd_play(snd_dead)

Sleep(20+mySize*15)
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