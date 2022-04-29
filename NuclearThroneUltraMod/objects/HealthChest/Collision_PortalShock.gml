repeat(2)
instance_create(x,y,HPPickup)
snd_play(sndHealthChest)
//I show mercy unlike Vlambeer
var  mHpI = 2;
with Player {
	if race==9 || race=12//Chicken maxhealth & yung cuz regain
	{
		var targetHealth = 8;
		if skill_got[1] == 1//Rhino skin
			targetHealth += 4;
		if skill_got[33]//Glass arm cannon
			targetHealth -= 2;
		if UberCont.opt_gamemode == 9
			targetHealth += UberCont.casualModeHPIncrease;
		if skill_got[9] 
			mHpI *= 2;
		targetHealth += UberCont.maxHpIncrease;
	    if maxhealth<targetHealth
	    {
		    maxhealth = min(maxhealth + mHpI,targetHealth);
	    }
	}
}

instance_destroy()

