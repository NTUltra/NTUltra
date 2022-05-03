/// @description Cycle through skills
if place_meeting(x,y,Player) && !used
{
	if !active
	{
		active = true;
		var i = skillIndex + 1;
		if i > maxskill
			i = 0;
		with Player {
			while (skill_got[i] != 1 || i == 27 //Ignore patience
			|| (i == 18 && skeletonlives < 1))//Ignore last wish if you lost your lives
			{
				i++;
				if i > maxskill
					i = 0;
			}
		}
		skillIndex = i;
		name = "REROLL#"+skill_name[i];
	}
	if KeyCont.key_pick[Player.p] = 1 && Player.maxhealth > 0
	{
		used = true;
		sprite_index = sprBossHolderInactive;
		Sleep(50);
		instance_create(x,y,Flash);
		BackCont.shake += 50;
		active = false;
		KeyCont.key_pick[Player.p] = 2;
		snd_play(sndUltraGrenadeSuck);
		with Player
		{
			skill_got[other.skillIndex] = 0;
			if other.skillIndex==13||other.skillIndex==14||other.skillIndex==15
			||other.skillIndex==16||other.skillIndex==17||other.skillIndex==21//wep specific
			{heavyheart--;}
			switch (other.skillIndex)
			{
				case 1: //RHINO SKIN
					if race == 25
					{
						maxhealth -= 5;
						if maxhealth < 1
							maxhealth = 1;
						if my_health > maxhealth
						{
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
							my_health = max(maxhealth,my_health - 5);	
						}
					}
				break;
				case 2: //EXTRA FEET
					if race == 25
						maxspeed -=0.6;
					else
						maxspeed -= 0.5;
				break;
				case 3: //PLUTONIUM HUNGER
					betterpluto = 0;
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
					lastwishused=false;
					if skeletonlives > 0
						skeletonlives --;
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
				case 33: //GLASS ARM CANNON
					maxhealth += 2;//I guess you could have 3 hp as melting here but thats cool
				break;
				
			}
			level -= 1;
			skillsChosen --;
			rad = GetPlayerMaxRad() * 0.5;
		}
	}
}
else
{
	active = false;	
}
