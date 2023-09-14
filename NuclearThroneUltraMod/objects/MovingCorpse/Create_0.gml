event_inherited();
friction = 0.415
image_speed = 0.4
depth = 7;
dmg = 1;
impactWristed = false;
if instance_exists(Player){
	if Player.ultra_got[52] == 1{
		friction=0.32;
	}
	if Player.skill_got[20] {
		dmg = 2;
		alarm[1] = 1;
		alarm[3] = 1;
		impactWristed = true;
		xprev = x;
		yprev = y;
	}
	if scrIsCrown(28) || scrIsGamemode(39)//Gore galore
	{
		bxprev = x;
		byprev = y;
		alarm[2] = 1;
		alarm[3] = 0;
	}
}

canspawnportal = true;
alarm[0] = 30;
alarm[4] = 40;

skidScale = 1;