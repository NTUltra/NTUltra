/// @description Init
event_inherited();
image_speed = 0;
talkPopupY -= 12;
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
cantUnderstand = true;
previousWep = 0;
previousBwep = 0;
specialConditionMet = -1;
if (loops > 0 && array_length(UberCont.voidSpecialConditions) > 0)
{
	specialConditionMet = UberCont.voidSpecialConditions[0];
	array_delete(UberCont.voidSpecialConditions,0,1);
	debug(UberCont.voidSpecialConditions);
}
//Only do unique character onces
if (UberCont.char_void_entered[race] == 1)
{
	if scrUniqueVoidRace(race) || scrHasNeverEnteredVoid() == 1
	{
		//UNIQUE DIALOGUERS
		killerSequence = true;
		hasShitToSay = false;
		with VoidNPC
		{
			hasShitToSay = false;	
		}
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
			canStartTalking = false;
		}
		if race == 6 || race == 7 {
			cantUnderstand = false;
		}
	}
}
else
{
	UberCont.ctot_void_entered += 1;	
}