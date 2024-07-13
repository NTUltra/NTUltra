if isArmour
{
	snd_play(sndArmourHeal)
}
else
{
	snd_play(sndHealthChest)
}
	repeat(2)
	instance_create(x,y,HPPickup)
//I show mercy unlike Vlambeer
var  mHpI = 2;
with Player {
	if race==9 || race=12//Chicken maxhealth & yung cuz regain
	{
		var targetHealth = 8;
		if scrIsGamemode(5)
			targetHealth = 1;
		if scrIsGamemode(9)
			targetHealth += UberCont.casualModeHPIncrease;
		targetHealth += UberCont.maxHpIncrease;
		if skill_got[1] == 1//Rhino skin
			targetHealth += 4;
		if skill_got[31]//Tough shell
			targetHealth += 1;
		if skill_got[33]//Glass arm cannon
			targetHealth = max(1,targetHealth-2);
		if skill_got[41]//nerves of steel
			targetHealth = max(1,targetHealth-2);
		if scrIsCrown(3)//Crown of death
			targetHealth = max(1,targetHealth-1);
		if scrIsCrown(20)//Crown of protection
			targetHealth = max(1,targetHealth-1);
		
		if skill_got[9] 
			mHpI *= 2;
	    if maxhealth<targetHealth
	    {
		    maxhealth = min(maxhealth + mHpI,targetHealth);
	    }
	}
}

instance_destroy()

