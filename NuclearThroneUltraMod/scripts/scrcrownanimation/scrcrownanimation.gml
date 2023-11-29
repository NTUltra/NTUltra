///scrCrownAnimation();
// /@description
///@param
function scrCrownAnimation(takenCrown){
	spr_idle = sprCrown0Idle
	spr_walk = sprCrown0Walk
	maxSpeed = 2;
	switch (takenCrown)
	{
		case 2://Life
			spr_idle = sprCrown1Idle
			spr_walk = sprCrown1Walk
		break;
		case 3://Death
			spr_idle = sprCrown2Idle
			spr_walk = sprCrown2Walk
		break;
		case 4://Haste
			spr_idle = sprCrown3Idle
			spr_walk = sprCrown3Walk
		break;
		case 5://Guns
			spr_idle = sprCrown4Idle
			spr_walk = sprCrown4Walk
		break;
		case 6://Hatred
			spr_idle = sprCrown5Idle
			spr_walk = sprCrown5Walk
		break;
		case 7://Blood
			spr_idle = sprCrown6Idle
			spr_walk = sprCrown6Walk
		break;
		case 8://Destiny
			spr_idle = sprCrown7Idle
			spr_walk = sprCrown7Walk
		break;
		case 9://Love
			spr_idle = sprCrown8Idle
			spr_walk = sprCrown8Walk
		break;
		case 10://Difficulty
			spr_idle = sprCrown9Idle
			spr_walk = sprCrown9Walk
		break;
		case 11://Reincarnation
			if instance_exists(Player) && UberCont.canPickFrogCrown && !scrIsGamemode(26) && !scrIsGamemode(27) && !scrIsGamemode(37)
			{
				spr_idle = sprCrownFrogIdle
				spr_walk = sprCrownFrogWalk
				alarm[3] = 90;
				
			}
			else
			{
				spr_idle = sprCrown10Idle
				spr_walk = sprCrown10Walk
			}
		break;
		case 12://Inversion
			spr_idle = sprCrown11Idle
			spr_walk = sprCrown11Walk
		break;
		case 13://Drowning
			spr_idle = sprCrown12Idle
			spr_walk = sprCrown12Walk
			//Bubbles
			alarm[4] = 5;
			alarm[5] = 4;
		break;
		case 14://Curses
			spr_idle = sprCrown13Idle
			spr_walk = sprCrown13Walk
			alarm[6] = 2;
		break;
		case 15://Choice
			spr_idle = sprCrown14Idle
			spr_walk = sprCrown14Walk
		break;
		case 16://Popo
			spr_idle = sprCrown15Idle
			spr_walk = sprCrown15Walk
		break;
		case 17://indecision
			spr_idle = sprCrown16Idle
			spr_walk = sprCrown16Walk
		break;
		case 18://Greed
			spr_idle = sprCrown17Idle
			spr_walk = sprCrown17Walk
		break;
		case 19://Blindness
			spr_idle = sprCrown18Idle
			spr_walk = sprCrown18Walk
		break;
		case 20://Protection
			spr_idle = sprCrown19Idle
			spr_walk = sprCrown19Walk
		break;
		case 21://Risk
			spr_idle = sprCrown20Idle
			spr_walk = sprCrown20Walk
		break;
		case 22://Luck
			spr_idle = sprCrown21Idle
			spr_walk = sprCrown21Walk
		break;
		case 23://Speed
			spr_idle = sprCrown22Idle
			spr_walk = sprCrown22Walk
			maxSpeed = 3;
		break;
		case 24://Sloth
			spr_idle = sprCrown23Idle
			spr_walk = sprCrown23Walk
			maxSpeed = 1;
		break;
		case 25://Freedom
			spr_idle = sprCrown24Idle
			spr_walk = sprCrown24Walk
		break;
		case 26://Energy
			spr_idle = sprCrown25Idle
			spr_walk = sprCrown25Walk
		break;
		case 27://Disco
			spr_idle = sprCrown26Idle
			spr_walk = sprCrown26Walk
			maxSpeed = 2.5;
		break;
		case 28://Apocalypse
			spr_idle = sprCrown27Idle
			spr_walk = sprCrown27Walk
		break;
		case 29://Purity
			spr_idle = sprCrown28Idle
			spr_walk = sprCrown28Walk
		break;
		case 30://Mercenary
			spr_idle = sprCrown29Idle
			spr_walk = sprCrown29Walk
		break;
		case 31://Bounty
			spr_idle = sprCrown30Idle
			spr_walk = sprCrown30Walk
		break;
		case 32://Misfortune
			spr_idle = sprCrown31Idle
			spr_walk = sprCrown31Walk
		break;
		case 33://Echo
			spr_idle = sprCrown32Idle
			spr_walk = sprCrown32Walk
		break;
		case 34://Time
			spr_idle = sprCrown33Idle
			spr_walk = sprCrown33Walk
		break;
	}
}