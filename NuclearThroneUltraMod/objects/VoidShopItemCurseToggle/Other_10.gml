/// @description Toggle curse

// Inherit the parent event
event_inherited();
with Player
{
	if curse == 0
	{
		curse = 1;
		with instance_create(x,y,PopupText)
		{
			mytext = "CURSE ON"
			theColour = c_purple;
			vspeed = -1;
			alarm[1] = 60;
		}
	}
	else
	{
		curse = 0;
		with instance_create(x,y,PopupText)
		{
			mytext = "CURSE OFF"
			theColour = c_lime;
			vspeed = -1;
			alarm[1] = 60;
		}
		if scrIsCrown(14) {
			snd_play(sndHealthPickup);
			scrHeal(1,true);	
		}
	}
}