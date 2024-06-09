if alarm[3] > 0
exit;
if time < 1
{
	if UberCont.normalGameSpeed == 60
		time += 0.2;
	else
		time += 0.4;
	if time > 1
		time = 1;
	exit;
}
if (UberCont.mouse__x < x+16 and UberCont.mouse__y < y+16 and UberCont.mouse__x > x-20 and UberCont.mouse__y > y-20)
{
	
	with SkillIcon
		selected = false;
	with UltraIcon
		selected = false;
		
	selected = true;
	with UberCont
	{
		selectedIndex = other.skillIndex;	
	}
}
if selected && visible
{
	if !hover
		snd_play_2d(sndHover);
	hover = true;
	if KeyCont.key_spec[p] == 1 && !(instance_exists(Player) && Player.ultra_got[19] && Player.altUltra){
		//KeyCont.key_spec[p] = 2;
		with SkillIcon
		{
			showDetail = !showDetail;
		}
		alarm[2] = 6;
		if showDetail
			snd_play_2d(sndClick);
		else
			snd_play_2d(sndClickBack);
		UberCont.opt_show_mutation_details = showDetail;
	}
	else if instance_exists(Player) && (KeyCont.key_fire[p] == 1 || KeyCont.key_pick[p] == 1) && (!mouse_check_button_pressed(mb_left) || (UberCont.mouse__x < x+16 and UberCont.mouse__y < y+16 and UberCont.mouse__x > x-20 and UberCont.mouse__y > y-20))
	{
		KeyCont.key_fire[p] = 2;
		KeyCont.key_pick[p] = 2;
		UberCont.globalMutationsChosen += 1414;
		Player.skill_got[skill] = 1
		if (!isRefund)
		{
			Player.skillsChosen+=1;
			Player.skillpoints -= 1
		}
		else
		{
			Player.refundPoints -= 1;	
		}
		with GameRender {
			event_user(0);
		}
		if skill != maxskill + 2 && skill != 27
			Player.totalSkills ++;
		if skill == maxskill + 1
		{
			//REGAL VISIONS
			with Player
			{
				getVision = false;	
			}
		}
		else if skill == 1
		{
			if Player.ultra_got[62] && Player.altUltra//Living armour
			{
				Player.maxarmour += 4;
				Player.armour += 4;
			}
			else if Player.race == 25
			{
				Player.maxhealth += 5
				Player.my_health += 5
			}
			else
			{
				Player.maxhealth += 4
				Player.my_health += 4
			}

		}
		else if skill == 31//Tough shell
		{
			if Player.ultra_got[62] && Player.altUltra//Living armour
			{
				Player.maxarmour += 1;
				Player.armour += 1;
			}
			else
			{
				Player.maxhealth += 1
				Player.my_health += 1
			}

		}
		else if skill = 2
		{
			scrApplyExtraFeet();

		}
		else if skill = 3
		{
			if Player.race == 25//Plutonium hunger
			{
				Player.betterpluto = 108;
			}
			else
			{
				Player.betterpluto = 90//98;
			}
		}
		else if skill = 4 && Player.race == 25//rabitpaw
		{
			Player.betterrabbitpaw += 0.07;
		}
		else if skill = 5 && Player.race=2
		{
		//Unlock atom
		scrUnlockCharacter(15,"FOR TAKING THRONE BUTT AS CRYSTAL");

		}
		else if skill = 10
		{
			with Player
			{
				if ultra_got[85]//ROGUE SUPER PORTAL STRIKE
				{
					rogueammomax=8;
				}
				else if ultra_got[87] && altUltra
				{
					rogueammomax=3;
				}
				else
				{
					rogueammomax=4;
				}
				if race == 25
				{
					typ_amax[1] = 255+skill_got[10]*375
					typ_amax[2] = 55+skill_got[10]*60
					typ_amax[3] = 55+skill_got[10]*60
					typ_amax[4] = 55+skill_got[10]*60
					typ_amax[5] = 55+skill_got[10]*60
					scrWeaponAdjustCost(0.9);
				}
				else
				{
					typ_amax[1] = 255+skill_got[10]*300
					typ_amax[2] = 55+skill_got[10]*44
					typ_amax[3] = 55+skill_got[10]*44
					typ_amax[4] = 55+skill_got[10]*44
					typ_amax[5] = 55+skill_got[10]*44
					scrWeaponAdjustCost(0.85);
				}
			}
		}
		else if skill = 13 && Player.race = 25//Long arms
		{
			Player.bettermelee = 0.25;
			if Player.ultra_got[97] && !Player.altUltra
				Player.bettermelee += 0.2;
		}
		else if skill= 16 && Player.race = 25//recycle gland
		{
			Player.betterrecyclegland = 9;
			if Player.ultra_got[97] && !Player.altUltra
				Player.betterrecyclegland = 16;

		}
		else if skill = 17 && Player.race = 25
		{
		Player.betterlaserbrain = 1;

			if Player.ultra_got[97] && !Player.altUltra
				Player.betterlaserbrain = 2;
		}
		else if skill = 21//bolt marrow
		{
		Player.betterboltmarrow = 7;
		if Player.ultra_got[97] && !Player.altUltra
		Player.betterboltmarrow=20;
		}
		else if skill == 42//Tail end
		{
			if Player.race == 25
				Player.betterTail = 1.65;
			if Player.ultra_got[97] && !Player.altUltra
				Player.betterTail = 2;
		}
		else if skill = 18//last wish
		{
			if Player.race=25
			{
				Player.ammo[1] = Player.typ_amax[1]
				Player.ammo[2] = Player.typ_amax[2]
				Player.ammo[3] = Player.typ_amax[3]
				Player.ammo[4] = Player.typ_amax[4]
				Player.ammo[5] = Player.typ_amax[5]
			}
			else
			{
				Player.ammo[1] += 200
				Player.ammo[2] += 20
				Player.ammo[3] += 20
				Player.ammo[4] += 20
				Player.ammo[5] += 20
			}
			Player.lastWishPrevent = true;
			if Player.race = 22
			{
				Player.rogueammo = Player.rogueammomax;
			}

			with Player
			{
				armour = maxarmour;
				if race==9 || race==12//Chicken maxhealth regain
			    {
					var targetHealth = 8;
					if scrIsGamemode(5)
						targetHealth = 1;
					if skill_got[1] == 1//Rhino skin
						targetHealth += 4;
					if skill_got[31]//Tough shell
						targetHealth += 1;
					if skill_got[33]//Glass arm cannon
						targetHealth = max(1,targetHealth-2);
					if skill_got[41]//nerves of steel
						targetHealth = max(1,targetHealth-2);
					if scrIsGamemode(9)
						targetHealth += UberCont.casualModeHPIncrease;
					targetHealth += UberCont.maxHpIncrease;
			        if maxhealth<targetHealth
			        {
				        maxhealth = targetHealth;
			        }
			    }
			}

			Player.my_health = max(Player.my_health,Player.maxhealth);
			if !Player.ultra_got[26] {
				if Player.ammo[1] > Player.typ_amax[1]
				Player.ammo[1] = Player.typ_amax[1]

				if Player.ammo[2] > Player.typ_amax[2]
				Player.ammo[2] = Player.typ_amax[2]

				if Player.ammo[3] > Player.typ_amax[3]
				Player.ammo[3] = Player.typ_amax[3]

				if Player.ammo[4] > Player.typ_amax[4]
				Player.ammo[4] = Player.typ_amax[4]

				if Player.ammo[5] > Player.typ_amax[5]
				Player.ammo[5] = Player.typ_amax[5]
			}

			if Player.curse = 1 or Player.bcurse = 1 or Player.ccurse = 1
			{
				if scrIsCrown(14) {
					snd_play(sndHealthPickup);
					scrHeal(1,true);	
				}
				snd_play_2d(sndUncurse);
				repeat(10)
					instance_create(Player.x+random(16)-8,Player.y+random(16)-8,Curse)
			}
			Player.curse = 0
			Player.bcurse = 0
			Player.ccurse = 0;
	
			if !UberCont.lastwishused
			{
				UberCont.lastwishused = true;
				with Player
				{
					lastwishused = true;
					skeletonlives += 1;
					livesRegain[array_length(livesRegain)] = 3;
					if array_length(livesRegain) > 3
						scrUnlockBSkin(19,"FOR HAVING FOUR LIVES",0);
				}
			}
			else
			{
				//Regain one part of life
				scrRegainOneLifePart();
			}

		}
		else if skill == 5
		{
			if Player.race = 1//thronebut for fish
			{
				with Player//update the ammo values
					scrWeapons();
			}
			if Player.race = 16//VIKING
			{
				Player.maxarmour+=1;
				Player.freeArmourStrike = true;
				Player.armour+=1;//kindness here
			}
			if scrIsCrown(34)
			{
				Player.rewinds = 2;
			}
		}
		else if skill == 19 {
			scrApplyEagleEyes();
		}
		else if skill==25{
			Player.strongspirit=true;
			Player.strongspiritused=false;
		}
		else if skill=27//patience
		{	with Player
			{
				if guarenteedReroll > 0
					guarenteedReroll -= 1;
 
				if race=25 && !other.isRefund
				{
					skillpoints++;
					skillsChosen--;
				}
				else
					patience++;
	
				patienceUsed++;
			}
		}
		else if skill == 33 //GLASS ARM CANNON
		{
			if Player.ultra_got[62] && Player.altUltra //Living armour
			{
				Player.maxarmour -= 2;
				Player.armour -= 2;
			}
			else
			{
				if Player.race != 25
					Player.maxhealth -= 2;
			}
			Player.exception = true;
			//Dont die on me friend
			Player.maxhealth = max(Player.maxhealth, 1);
			Player.my_health = max(Player.my_health, 1);
			Player.prevhealth = Player.my_health;
		}
		else if skill == 41 //NERVES OF STEEL
		{
			if Player.ultra_got[62] && Player.altUltra //Living armour
			{
				Player.maxarmour -= 1;
				Player.armour = min(Player.armour,Player.maxarmour);
			}
			else
			{
				//if Player.maxarmour < 1
				//	Player.gotMinimumArmour = true;
				Player.maxarmour += 1;//max(1,Player.maxarmour);
				Player.armour = clamp(Player.armour + 1, 1, Player.maxarmour);
				if Player.race == 25
				{
					Player.maxhealth -= 1;
					if Player.my_health > Player.maxhealth
						Player.my_health -= 1;
				}
				else
				{
					Player.maxhealth -= 2
					if Player.my_health > Player.maxhealth
						Player.my_health -= 2;
				}
				Player.prevhealth = Player.my_health;
			}
			Player.exception = true;
			//Dont die on me friend?
			Player.maxhealth = max(Player.maxhealth, 1);
			Player.my_health = max(Player.my_health, 1);
		}
		else if skill == 35//PUFFY CHEEKS
		{
			with Player
			{
				var lowa = wep_load[wep]*-2;
				var lowb = wep_load[bwep]*-2;
				var lowc = wep_load[cwep]*-2;
				reload = lowa;
				breload = lowb;
				creload = lowc;
			}
		}
		if skill == 5 && Player.altUltra && Player.ultra_got[51]
		{
			with Player
			{
				sheepFakeouts = 5;
			}
		}
		if skill==13||skill==14||skill==15||skill==16||skill==17||skill==21||skill==42||skill==43//wep specific
		{Player.heavyheart++;}

		with SkillIcon
		instance_destroy()

		with LevCont
		instance_destroy()

		with UltraIcon
		instance_destroy()

		if Player.skillpoints > 0 || Player.refundPoints > 0
		{
		instance_create(x,y,LevCont);
		}
		else if !instance_exists(GenCont)
		{
			with instance_create(x,y,GenCont){
			race = Player.race;}
		}
		snd_play_2d(skill_msnd[skill], 0, false, false)//skill_msnd no more array sorry but memory

		if skill != maxskill + 2
		with UberCont
		{
			ctot_skill_taken[other.skill] += 1;
			if other.skill == 22 && ctot_skill_taken[other.skill] >= 10
			{
				scrUnlockGameMode(24,"FOR TAKING STRESS 10 TIMES");
			}
			var gotEmAll = true;
			var dir = 0;
			repeat(maxskill+1)
			{
				if ctot_skill_taken[dir] <= 0
					gotEmAll = false;
				dir += 1;
			}
			if gotEmAll
			{
				scrUnlockGameMode(28,"FOR TAKING EVERY REGULAR MUTATION");
			}
			scrSave();//Don't necesserily have to save here
		}
	}
}
else
{
	hover = false;	
}