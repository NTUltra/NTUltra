/// @description Decide ending
if type == 0
{
	canSkip = false;
	//audio_stop_sound(musCredits);
	audio_stop_sound(amb0c);
	snd_play_2d(sndPortalOpen);
	snd_play_2d(sndPortalClose);
	with ThroneIISpiral
	{
		with latestSpiral
		{
			image_index = 1;
		}
		with Spiral
		{
			speedUp = true;	
		}
		instance_destroy();	
	}
	with Ending1
	{
		event_user(0);	
	}
	with Top
	{
		sprite_index = sprWall135Top;	
	}
	with TopSmall
	{
		sprite_index = sprWall135Trans;	
	}
}