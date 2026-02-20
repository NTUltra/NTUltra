/// @description Init
event_inherited();
typ = 5;
team = 1;
image_yscale = 1;
laserRange = 3;
laserRangeIncrease = 8 + min(7,GetPlayerLoops());
if instance_exists(Player) && Player.skill_got[12]
{
	laserRangeIncrease -= 3;
	image_yscale = 0.8;
}
maxRange = 800;
alarm[3] = 1;

	dmg = 3;
if scrIsGamemode(9)//Casual mode
	dmg = 2;
if scrIsHardMode()//HARD MODE
	dmg = 4;