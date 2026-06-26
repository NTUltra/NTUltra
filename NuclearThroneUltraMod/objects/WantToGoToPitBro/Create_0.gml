/// @description
alarm[0] = 1;
instaTp = true;
if instance_exists(WantBoss) || instance_exists(SandWorm)
{
	with instance_create(x,y,PopupText)
	{
		mytext = "DEFEAT BOSS FIRST!"
		theColour=c_red;
	}
	instaTp = false;
}