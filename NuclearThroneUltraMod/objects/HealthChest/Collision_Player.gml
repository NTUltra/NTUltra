if !instance_exists(GenCont)
{


	//Unlock chicken
	scrUnlockCharacter(9,"FOR OPENING UP A BIG HP CHEST")


	instance_destroy()

	if !Player.canHeal
		exit;

	instance_create(x,y,HealFX)
	num = 4
	if Player.skill_got[9] = 1
		num = 8
	
	var  mHpI = 2;
	with other {
		//OVERHEAL
		if my_health + other.num > maxhealth
		{
			var overheal = min(my_health,maxhealth) + other.num - maxhealth;
			my_health += other.num-overheal;
			my_health += ceil(overheal * 0.5);
			other.num = ceil(other.num-(overheal*0.5));
		}
		else
		{
			my_health += other.num;	
		}
		/*
		if my_health + other.num <= maxhealth
			my_health += other.num
		else// if other.crown != 2
			my_health = max(my_health,maxhealth);
		*/
		if race==9 || race=12//Chicken maxhealth regain
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
			if skill_got[9] 
				mHpI *= 2;
			targetHealth += UberCont.maxHpIncrease;
		    if maxhealth<targetHealth
		    {
			    maxhealth = min(maxhealth + mHpI,targetHealth);
		    }
		}
	}


	if UberCont.opt_ammoicon
	{
		dir = instance_create(x,y,PopupText)
		dir.spr = sprHPIconPickup;
		dir.mytext = "+"+string(num)
		if other.my_health = other.maxhealth
		dir.mytext = "MAX"
		else if other.my_health > other.maxhealth
		dir.mytext = "+"+string(ceil(num))+"#OVERHEAL!"
	}
	else
	{
		dir = instance_create(x,y,PopupText)
		dir.mytext = "+"+string(num)+" HP"
		if other.my_health = other.maxhealth
		dir.mytext = "MAX HP"
		else if other.my_health > other.maxhealth
		dir.mytext = "+"+string(num)+" HP#OVERHEAL!"
	}

	snd_play(sndHealthChest)
}


