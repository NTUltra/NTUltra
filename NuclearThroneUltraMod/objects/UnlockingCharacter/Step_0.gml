/// @description Timing
if instance_exists(Menu) && Menu.widescreen > 48 && !instance_exists(UnlockingSecondRow)
{
	lerpTime += 0.06;
	if lerpTime > 1
	{
		var selectedIndex = justUnlocked[unlockingIndex];
		with CharSelect
		{
			if num == selectedIndex
			{
				unlocking = false;
				unlockTime = 1.5;
				snd_play_2d(sndUnlockCharacterLight);
			}
		}
		unlockingIndex += 1;
		lerpTime = 0;
		if unlockingIndex >= array_length(justUnlocked)
		{
			instance_destroy();
		}
	}
}