/// @description Go to Ultra Scrapyard
if my_health > 0
{
	var cost = 434//70%//465;//75% on level 10
	if Player.race == 20
		cost -= 62;
	var mr = 620;
	with Player
		mr = GetPlayerMaxRad();
	name = string((cost/mr)*100)+actionName;
	if KeyCont.key_pick[other.p] = 1
	{
		if Player.rad >= cost
		{
			scrRaddrop(10);
			sprite_index = spr_active;
			image_index = 0;
			image_speed = 0.4;
			with Player
			{
				rad -= cost;
				area = 136;
				subarea = 2;
			}
			with instance_create(x,y,Portal)
			{
				type = 1
				pullstrength = 3;
				alarm[1] = 1;
			}
			BackCont.shake += 10;
			snd_play(sndUltraGrenadeSuck);
			KeyCont.key_pick[Player.p] = 2;
			mask_index = mskPickupThroughWall;
		}
		else if !audio_is_playing(sndUltraEmpty)
		{
			BackCont.shake += 5;
			snd_play(sndUltraEmpty);
			with instance_create(x,y,PopupText)
			{
				mytext = "NOT ENOUGH RADS"
				theColour=c_red;
			}
		}
	}
	
}