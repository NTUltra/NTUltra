/// @description START A HACK
with Player
{
	if instance_exists(YungCuzDupe)
	{
		snd_play_2d(sndYungCuzStartHack,0.1);
		var nums = instance_number(YungCuzDupe)
		var duration =  100;
		var snd = sndYungCuzStartHack1;
		if nums > 3
		{
			duration += (nums - 3) * 30;
			snd = sndYungCuzStartHack4;
		}
		if nums > 1
		{
			if nums < 3
				snd = sndYungCuzStartHack2
			//INFINITE AMMO
			with Player
			{
				alarm[2] = duration;
			}
		}
		if nums > 2
		{
			if nums < 4
				snd = sndYungCuzStartHack3
			if instance_exists(Ghosting)
			{
				with Ghosting
				{
					alarm[0] = duration;	
				}
			}
			else
			{
				with instance_create(x,y,Ghosting)
				{
					alarm[0] = duration;
					msk = other.mask_index;
					other.mask_index = mskPickupThroughWall;
				}
			}
			alarm[3] = duration;
		}
		snd_play_2d(snd,0.1);
		with instance_create(x,y,AutoAim)
		{
			alarm[0] = duration;
			alarm[1] = alarm[0] - 6;
			if nums > 3
				endSound = sndYungCuzEndHack4;
			else if nums > 2
				endSound = sndYungCuzEndHack3;
			else if nums > 1
				endSound = sndYungCuzEndHack2;
		}
		BackCont.shake += 10 * nums;
		with YungCuzDupe
		{
			instance_destroy();	
		}
	}
	else
	{
		BackCont.shake += 5;
		with instance_create(x,y,PopupText)
		{
			mytext = "NO DUPLICATES!";
			theColour=c_red;
		}	
	}
}
instance_destroy();