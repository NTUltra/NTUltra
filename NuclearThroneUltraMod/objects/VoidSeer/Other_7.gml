/// @description Transition
if sprite_index == spr_intro
{
	sprite_index = spr_idle;
	if killerSequence
	{
		alarm[2] = 30;
	}
	else
	{
		audio_stop_sound(sndVoidEyeCreeping);
		snd_play(sndVoidCreepEnd);	
	}
	BackCont.shake += 10;
}
if sprite_index == spr_dead
{
	image_speed = 0;
	image_index = image_number - 1;
	BackCont.shake += 10;
}