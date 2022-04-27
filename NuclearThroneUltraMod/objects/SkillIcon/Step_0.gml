if KeyCont.key_fire[p] = 1 and (UberCont.mouse__x < x+22 and UberCont.mouse__y < y+22 and UberCont.mouse__x > x-22 and UberCont.mouse__y > y-22)
{
Player.skill_got[skill] = 1
Player.skillsChosen+=1;
Player.skillpoints -= 1

if skill = 0//heavy heart
{
//Unlock Elementor
scrUnlockCharacter(24,"FOR TAKING HEAVY HEART")
}
if skill = 1
{

	if Player.race=25
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
if Player.race=25
	Player.maxspeed +=0.6;
else
	Player.maxspeed += 0.5;

}
else if skill = 3
{
	if Player.race=25//Plutonium hunger
	{
		Player.betterpluto = 80;
	}
	else
	{
		Player.betterpluto = 70;	
	}
}
else if skill = 4 && Player.race=25//rabitpaw
{
	Player.betterrabbitpaw+=0.12;
}
else if skill = 5 && Player.race=2
{
//Unlock atom
scrUnlockCharacter(15,"FOR TAKING THRONEBUTT AS CRYSTAL");

}
else if skill = 10
{
	if Player.ultra_got[85]//ROGUE SUPER PORTAL STRIKE
	{
		Player.rogueammomax=8;
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
	if Player.ultra_got[97]
		Player.bettermelee=1;
}
else if skill= 16 && Player.race = 25//recycle gland
{
Player.betterrecyclegland=0.14;
if Player.ultra_got[97]
Player.betterrecyclegland=0.26;

}
else if skill = 17 && Player.race = 25
{
Player.betterlaserbrain=1;

if Player.ultra_got[97]
Player.betterlaserbrain=2.1;
}
else if skill = 21//bolt marrow
{
Player.betterboltmarrow=7;
if Player.ultra_got[97]
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
		if skill_got[1] == 1//Rhino skin
			targetHealth += 4;
		if skill_got[33]//Glass arm cannon
			targetHealth -= 2;
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
Player.skeletonlives+=1;

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
Player.strongspiritused=false;}
else if skill=27//patience
{


	if Player.race=25
	{
		Player.skillpoints++;
		Player.skillsChosen--;
	}
	else
	Player.patience++;
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
	//Dont die on me friend
	Player.maxhealth = max(Player.maxhealth, 1);
	Player.my_health = max(Player.my_health, 1);
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

