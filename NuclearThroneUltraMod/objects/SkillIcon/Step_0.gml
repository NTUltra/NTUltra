if KeyCont.key_fire[p] = 1 and (UberCont.mouse__x < x+16 and UberCont.mouse__y < y+16 and UberCont.mouse__x > x-20 and UberCont.mouse__y > y-20)
{
Player.skill_got[skill] = 1
Player.skillsChosen+=1;
Player.skillpoints -= 1
if skill != 37
	Player.totalSkills ++;
if skill = 0//heavy heart
{
//Unlock Elementor
scrUnlockCharacter(24,"FOR TAKING HEAVY HEART")
}
if skill = 1
{
	if Player.ultra_got[62] && Player.altUltra
	{
		Player.maxarmour += 4;
		Player.armour += 4;
	}
	else if Player.race=25
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
else if skill = 2
{
	scrApplyExtraFeet();

}
else if skill = 3
{
	if Player.race=25//Plutonium hunger
	{
		Player.betterpluto = 102;
	}
	else
	{
		Player.betterpluto = 94;	
	}
}
else if skill = 4 && Player.race=25//rabitpaw
{
	Player.betterrabbitpaw+=0.05;
}
else if skill = 5 && Player.race=2
{
//Unlock atom
scrUnlockCharacter(15,"FOR TAKING THRONE BUTT AS CRYSTAL");

}
else if skill = 10
{
	if Player.ultra_got[85]//ROGUE SUPER PORTAL STRIKE
	{
		Player.rogueammomax=8;
	}
	else if Player.ultra_got[87] && Player.altUltra
	{
		Player.rogueammomax=3;
	}
	else
	{
		Player.rogueammomax=4;
	}
	
if Player.race=25
{
Player.typ_amax[1] = 255+Player.skill_got[10]*345
Player.typ_amax[2] = 55+Player.skill_got[10]*55
Player.typ_amax[3] = 55+Player.skill_got[10]*55
Player.typ_amax[4] = 55+Player.skill_got[10]*55
Player.typ_amax[5] = 55+Player.skill_got[10]*55
}
else
{
Player.typ_amax[1] = 255+Player.skill_got[10]*300
Player.typ_amax[2] = 55+Player.skill_got[10]*44
Player.typ_amax[3] = 55+Player.skill_got[10]*44
Player.typ_amax[4] = 55+Player.skill_got[10]*44
Player.typ_amax[5] = 55+Player.skill_got[10]*44
}

}
else if skill = 13 && Player.race = 25//Long arms
{
	Player.bettermelee+=0.4;
	if Player.ultra_got[97] && !Player.altUltra
		Player.bettermelee=0.4;
}
else if skill= 16 && Player.race = 25//recycle gland
{
	Player.betterrecyclegland = 5;
	if Player.ultra_got[97] && !Player.altUltra
		Player.betterrecyclegland = 15;

}
else if skill = 17 && Player.race = 25
{
Player.betterlaserbrain=1;

	if Player.ultra_got[97] && !Player.altUltra
		Player.betterlaserbrain=2;
}
else if skill = 21//bolt marrow
{
Player.betterboltmarrow=7;
if Player.ultra_got[97] && !Player.altUltra
Player.betterboltmarrow=20;
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
			if UberCont.opt_gamemode == 5
				targetHealth = 1;
			if skill_got[1] == 1//Rhino skin
				targetHealth += 4;
			if skill_got[33]//Glass arm cannon
				targetHealth = max(1,targetHealth-2);
			if UberCont.opt_gamemode == 9
				targetHealth += UberCont.casualModeHPIncrease;
			targetHealth += UberCont.maxHpIncrease;
	        if maxhealth<targetHealth
	        {
		        maxhealth = targetHealth;
	        }
	    }
	}

	Player.my_health = Player.maxhealth

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

	if Player.curse = 1 or Player.bcurse = 1
	{
	repeat(10)
	instance_create(Player.x+random(16)-8,Player.y+random(16)-8,Curse)
	}
	Player.curse = 0
	Player.bcurse = 0

	if UberCont.lastwishused=false
	{
		UberCont.lastwishused = true;
		with Player
		{
			lastwishused = true;
			skeletonlives += 1;
			livesRegain[array_length(livesRegain)] = 3;
		}
	}
	else
	{
		//Regain one part of life
		scrRegainOneLifePart();
	}

}
else if skill = 5 && Player.race = 1//thronebut for fish
{
	with Player//update the ammo values
		scrWeapons();
}
else if skill = 5 && Player.race = 16//VIKING
{
	Player.maxarmour+=1;
	Player.freeArmourStrike = true;
	Player.armour+=1;//kindness here
}
else if skill = 19{
	scrApplyEagleEyes();
}
else if skill==25{
	Player.strongspirit=true;
	Player.strongspiritused=false;
}
else if skill=27//patience
{	with Player
	{
		if race=25
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

	if Player.race=25
	{
		Player.maxhealth -= 1
		if Player.my_health > Player.maxhealth
			Player.my_health -= 1
	}
	else
	{
		Player.maxhealth -= 2
		if Player.my_health > Player.maxhealth
			Player.my_health -= 2
	}
	Player.exception = true;
	//Dont die on me friend
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
if skill==13||skill==14||skill==15||skill==16||skill==17||skill==21//wep specific
{Player.heavyheart++;}

with SkillIcon
instance_destroy()

with LevCont
instance_destroy()

with UltraIcon
instance_destroy()

if Player.skillpoints > 0
{
instance_create(x,y,LevCont);
}
else
{
with instance_create(x,y,GenCont){
race = Player.race;}
}
snd_play_2d(skill_msnd[skill], 0, false, false)//skill_msnd no more array sorry but memory

if skill != maxskill + 1
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
	}
	if gotEmAll
	{
		scrUnlockGameMode(28,"FOR TAKING EVERY REGULAR MUTATION");
	}
	scrSave();//Don't necesserily have to save here
}
}

