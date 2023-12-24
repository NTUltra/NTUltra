///scrLoseSkill();
// /@description need to run in player
///@param
function scrLoseSkill(skillIndex){
	skill_got[skillIndex] = 0;
	if skillIndex==13||skillIndex==14||skillIndex==15
	||skillIndex==16||skillIndex==17||skillIndex==21||skillIndex==42//wep specific
	{heavyheart--;}
	switch (skillIndex)
	{
		case 0: //HEAVY HEART
			heavyheart = 0;
		break;
		case 1: //RHINO SKIN
			if ultra_got[62] && altUltra//Living armour
			{
				maxarmour = max(0, maxarmour - 4)
				armour = min(armour, maxarmour);
			}
			else if race == 25
			{
				maxhealth -= 5;
				if maxhealth < 1
					maxhealth = 1;
				if my_health > maxhealth
				{
					if scrIsCrown(18)
						my_health = max(maxhealth,my_health - 2.5);
					else
						my_health = max(maxhealth,my_health - 5);
				}
			}
			else
			{
				maxhealth -= 4;
				if maxhealth < 1
					maxhealth = 1;
				if my_health > maxhealth
				{
					if scrIsCrown(18)
						my_health = max(maxhealth,my_health - 2);
					else
						my_health = max(maxhealth,my_health - 4);
				}
			}
		break;
		case 2: //EXTRA FEET
			if race == 25
				maxSpeed -=0.6;
			else
				maxSpeed -= 0.5;
		break;
		case 3: //PLUTONIUM HUNGER
			betterpluto = 39;
		break;
		case 4: //RABBIT PAW
			betterrabbitpaw = 0;
		break;
		case 5: //THRONE BUTT
			if race == 1//Fish lose extra value of ammo drops
			{
				typ_ammo[1] = 40 typ_ammo[2] = 10 typ_ammo[3] = 9 typ_ammo[4] = 8 typ_ammo[5] = 13
			}
			else if race == 16
			{
				maxarmour --;
				freeArmourStrike --;
				if armour > maxarmour
					armour = maxarmour;
			}
		break;
		case 10: //BACK MUSCLE
			if ultra_got[85]
			{
				if rogueammomax > 6
					rogueammomax = 6;
			}
			else if rogueammomax > 3
				rogueammomax = 3;
			if ultra_got[87] && altUltra//Imortal popo
				rogueammomax = 2;
			rogueammo = min(rogueammo,rogueammomax);	
					
			typ_amax[0] = 1000 typ_amax[1] = 255 typ_amax[2] = 55 typ_amax[3] = 55 typ_amax[4] = 55 typ_amax[5] = 55
			ammo[1] = min(ammo[1],typ_amax[1]);
			ammo[2] = min(ammo[2],typ_amax[2]);
			ammo[3] = min(ammo[3],typ_amax[3]);
			ammo[4] = min(ammo[4],typ_amax[4]);
			ammo[5] = min(ammo[5],typ_amax[5]);
			//Cap the ammo
		break;
		case 13: //LONG ARMS
			bettermelee = 0;
		break;
		case 16: //RECYCLE GLAND
			betterrecyclegland = 0;
		break;
		case 17: //ENERGY BRAIN
			betterlaserbrain = 0;
		break;
		case 18: //LAST WISH
			var al = array_length(livesRegain);
			var tookPartialLife = false;
			//Prioritize taking lifes that are not full/active
			for (var i = 0; i < al; i++) {
				if !tookPartialLife && livesRegain[i] > 0 && livesRegain[i] < 3
				{
					livesRegain[i] -= 1;
					tookPartialLife = true;
				}
			}
			//Could not find a partial life now take a full one
			if !tookPartialLife
			{
				for (var i = 0; i < al; i++) {
					if !tookPartialLife && livesRegain[i] > 0
					{
						livesRegain[i] -= 1;
						tookPartialLife = true;
					}
				}
			}
		break;
		case 19: //EAGLE EYES
			if race == 25
			{
				accuracy = standartAccuracy/0.24//0.3//in case you have build up rage use the standart
				standartAccuracy = accuracy//new standart
			}
			else
			{
				accuracy = standartAccuracy/0.28//0.38//in case you have build up rage use the standart
				standartAccuracy = accuracy//new standart
			}
		break;
		case 21: //BOLT MARROW
			betterboltmarrow = 0;
		break;
		case 25: //STRONG SPIRIT
			strongspirit = false;
			strongspiritused = false;
			snd_play(sndStrongSpiritLost);
		break;
		case 26: //HAMMER HEAD
			hammerheadtimer = 0;
			hammerheadcounter = 0;
		break;
		case 27: //PATIENCE
			patience--;
		break;
		case 28: //RAGE
			rage = 0;
			accuracy=standartAccuracy;
		break;
		case 33: //GLASS ARM CANNON
			maxhealth += 1;
		break;
		case 38: //ENRICHED METABOLISM
			metabolism = 0;
		break;
		case 39: //ALIENT INTESTINES
			alienIntestines = 0;
		break;
		case 41: //NERVES OF STEEL
			maxhealth += 2;
			if gotMinimumArmour && !scrIsCrown(10)
			{
				maxarmour -= 1;
				armour = 0;
				gotMinimumArmour = false;
			}
		break;
		case 42: //TAIL END
			betterTail = 1.5;
		break;
				
	}
	level -= 1;
	totalSkills--;
	skillsChosen --;
	with GameRender {
		event_user(0);
	}
}