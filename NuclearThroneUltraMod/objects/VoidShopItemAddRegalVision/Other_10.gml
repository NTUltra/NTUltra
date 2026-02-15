/// @description Unlock second starting weapons
if UberCont.regal_start[Player.race] < 99
{
	event_inherited();
	with UberCont
	{
		regal_start[Player.race] += 1;
		scrSave();
	}
	with instance_create(x,y,PopupText)
	{
		mytext = "REGAL VISION START +1\n" + Player.race_name[Player.race]+"\nTOTAL: " + string(UberCont.regal_start[Player.race]);
		theColour = c_lime;
		vspeed = -1;
		alarm[1] = 75;
	}
}
else
{
	with instance_create(x,y,PopupText)
	{
		mytext = "OKE CHILL BRO\nTHATS ENOUGH REGAL VISIONS";
		theColour = c_red;
		vspeed = -1.5;
		alarm[1] = 50;
	}
	event_user(1);
}