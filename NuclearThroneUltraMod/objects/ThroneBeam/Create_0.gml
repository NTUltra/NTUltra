event_inherited();
typ = 4;
dmg = 5;
img = 0
xEnd = x;
yEnd = y;
alarm[0] = 1;
alarm[2] = 0;
sprBeam = sprNothingBeam;
sprBeamHit = sprNothingBeamHit;
angleRate = 0.3;
angleMax = 10;
if GetPlayerLoops() > 0
	angleMax = 15;
angleDir = 1;
if instance_exists(Player)
{
	if Player.skill_got[12] == 1
	{
		//Euphoria
		image_xscale = 0.75;
	}
}
