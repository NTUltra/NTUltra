/// @description Init
event_inherited();
image_speed = 0;
spr_intro = sprVoidSeerIntro;
spr_idle = sprVoidSeerIdle;
spr_dead = sprVoidSeerDeath;
alarm[0] = 15;
depth = -1;
killerSequence = false;
loops = GetPlayerLoops();
race = Player.race;
raceName = Player.race_name[Player.race];
UberCont.char_void_entered[race] += 1;
textQueue = [];
textQueueTime = [];
cantUnderstand = true;
previousWep = 0;
previousBwep = 0;
if (true || (UberCont.ctot_void_entered == 0) || (race == 6 && UberCont.char_void_entered[race] == 1))
{
	killerSequence = true;
	hasShitToSay = false;
	with VoidMaster
	{
		visible = false;
		alarm[0] = 0;
	}
	with VoidBench
	{
		visible = false;
		alarm[0] = 0;
	}
	with VoidFiend
	{
		visible = false;
		alarm[0] = 0;
	}
	with VoidExit
	{
		alarm[0] = 0;
	}
	with TextHandler
	{
		showCanSkip = false;	
	}
	if race == 6 {
		cantUnderstand = false;
	}
}
else
{
	UberCont.ctot_void_entered += 1;	
}