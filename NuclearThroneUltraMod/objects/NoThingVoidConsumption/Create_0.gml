/// @description Init
alarm[0] = 3;
image_speed = 0.7;
gotRegal = false;
gotThroneButt = false;
if instance_exists(Player)
{
	with Player
	{
		if skill_got[maxskill + 1]
			other.gotRegal = true;
		if skill_got[5]
			other.gotThroneButt = true;
	}
}