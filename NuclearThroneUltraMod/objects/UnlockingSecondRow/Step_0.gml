/// @description SPLIT IT SHOW THE SECOND ROW!
if !instance_exists(Menu) || Menu.widescreen > 48
{
	lerpTime += lerpTimeIncrease;
	if lerpTime > soundGoTime && !playedSound
	{
		snd_play_2d(sndUnlockingSecondRow);
		playedSound = true;
	}
	else
		audio_resume_sound(sndUnlockingSecondRow);
	if lerpTime > 1
	{
		with CharSelect
		{
			if yOffset == 0
				continue;
			if yOffset < 0.1
			{
				yOffset += 0.8;
			}
			else if yOffset > 0.1
			{
				yOffset -= 0.6;
			}
			else
			{
				yOffset = 0;
			}
		}
		with CrownIcon
		{
			if yOffset == 0
				continue;
			if yOffset < 0.1
			{
				yOffset += 0.5;
			}
			else if yOffset > 0.1
			{
				yOffset -= 0.3;
			}
			else
			{
				yOffset = 0;
			}
		}
		if lerpTime > 1.7
		{
			lerpTimeIncrease *= -1.25;
			lerpTime = 1.7;
		}
	}
	else if lerpTimeIncrease < 0 && lerpTime < 0.2
	{
		with CharSelect
		{
			yOffset = 0;	
		}
		with UnlockingCharacter
		{
			lerpTime = min(1,lerpTime + 0.9);
		}
		instance_destroy();
	}
}
else if instance_exists(Menu) && audio_is_playing(sndUnlockingSecondRow)
{
	audio_pause_sound(sndUnlockingSecondRow);
}