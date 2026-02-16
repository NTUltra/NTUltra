/// @description Init from player
spr_idle = Player.spr_idle;
spr_walk = Player.spr_walk;
spr_hurt = Player.spr_hurt;
spr_dead = Player.spr_dead;
race = Player.race;
snd_hurt = Player.snd_hurt_actual;
snd_dead = Player.snd_dead;
if !audio_is_playing(Player.snd_wrld)
	snd_play(Player.snd_wrld);
if Player.skill_got[29] {
	wakeupTime += 60;
	scrGiveSnooze();
}
if Player.area == 140
{
	actTime += 1;
	tellTime += 1;
}