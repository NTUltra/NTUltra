/// @description Init
event_inherited();
image_yscale = 1;
laserRange = 3;
laserRangeIncrease = 5 + min(5,GetPlayerLoops());
if instance_exists(Player) && Player.skill_got[12]
{
	laserRangeIncrease -= 2;
	image_yscale = 0.8;
}
maxRange = 800;
alarm[3] = 1;

	dmg = 3;
if UberCont.opt_gamemode == 9//Casual mode
	dmg = 2;
if scrIsHardMode()//HARD MODE
	dmg = 4;