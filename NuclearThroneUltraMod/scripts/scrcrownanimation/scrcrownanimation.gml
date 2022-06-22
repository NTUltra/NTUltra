///scrCrownAnimation();
// /@description
///@param
function scrCrownAnimation(takenCrown){
	spr_idle = sprCrown0Idle
	spr_walk = sprCrown0Walk
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
			spr_idle = sprCrown10Idle
			spr_walk = sprCrown10Walk
		break;
		case 12://Inversion
			spr_idle = sprCrown11Idle
			spr_walk = sprCrown11Walk
		break;
		case 13://Natural selection
			spr_idle = sprCrown12Idle
			spr_walk = sprCrown12Walk
		break;
		case 14://Curses
			spr_idle = sprCrown13Idle
			spr_walk = sprCrown13Walk
		break;
		case 15://Choice
			spr_idle = sprCrown14Idle
			spr_walk = sprCrown14Walk
		break;
		case 16://Popo
			spr_idle = sprCrown15Idle
			spr_walk = sprCrown15Walk
		break;
		case 17://Apocalypse
			spr_idle = sprCrown16Idle
			spr_walk = sprCrown16Walk
		break;
		case 18://Disco
			spr_idle = sprCrown17Idle
			spr_walk = sprCrown17Walk
		break;
		case 19://Blindness
			spr_idle = sprCrown18Idle
			spr_walk = sprCrown18Walk
		break;
		
	}
}