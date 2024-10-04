/// @description xxx

// Inherit the parent event
event_inherited();

if other.team != team and other.my_health > 0
{
	if instance_exists(Player) && Player.skill_got[17] = 1// && !audio_is_playing(sndMorphStart)
			snd_play(sndMorphStart,0.1,true,true);
		else// if !audio_is_playing(sndMorphStop)
			snd_play(sndMorphStop,0.1,true,true);
	
	with instance_create(other.x,other.y,Morph)
	{
		direction = other.direction;
		speed = 0.25;
		team = other.team;
		alarm[0] -= 1;
	}
	scrRecycleGland(1);
}