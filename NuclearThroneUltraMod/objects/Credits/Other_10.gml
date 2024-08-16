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
else if type == 1
{
	canSkip = false;
	audio_stop_sound(amb0c);
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
	with Player
	{
		instance_destroy();	
	}
	with becomenemy
	{
		instance_destroy();	
	}
	with GameRender
	{
		gameoverText = "THE STRUGGLE IS OVER..."
	}
	with Cursor
	{
		visible = true;
		inGameVisibleState = true;
	}
	audio_stop_all();
}
else if type == 3
{
	instance_destroy();
	room_goto(romGame);
}