if !instance_exists(GenCont)
{


	//Unlock chicken
	scrUnlockCharacter(9,"FOR OPENING UP A BIG HP CHEST")


	instance_destroy()

	if isArmour
	{
		num = 2;
	
		if Player.skill_got[9]
			num = 4;
		if UberCont.opt_ammoicon
		{
			dir = instance_create(x,y,PopupText)
			dir.sprt = sprArmourIconPickup;
			dir.mytext = "+"+string(num)
			if Player.armour >= Player.maxarmour
			dir.mytext = "MAX"
		}
		else
		{
			dir = instance_create(x,y,PopupText)
			dir.mytext = "+"+string(num)+" HP"
			if Player.armour >= Player.maxarmour
			dir.mytext = "MAX ARMOUR"
		}
		with Player
		{
			armour = min(maxarmour,armour + other.num);
		}
		with instance_create(x,y,SmallChestPickup)
		{
			sprite_index = sprPickupArmourPickup	
		}
		snd_play(sndArmourHeal);
		instance_destroy()
	}
	else
	{
		if !Player.canHeal
			exit;

		num = 4
		if Player.skill_got[9]
		{
			num = 8
			snd_play(sndHealthChestUpg)
			with instance_create(x,y,HealFX)
			{
				sprite_index = sprHealGiantFX;
			}
		}
		else
		{
			snd_play(sndHealthChest)
			with instance_create(x,y,HealFX)
			{
				sprite_index = sprHealBigFX;
			}
		}
	
		var  mHpI = 1;
		with other {
			//OVERHEAL
			if my_health >= maxhealth
			{
				other.num = 1;
				if skill_got[9]
					other.num = 2;
				my_health += other.num;
				/*
				var overheal = min(my_health,maxhealth) + other.num - maxhealth;
				my_health += other.num-overheal;
				my_health += ceil(overheal * 0.5);
				other.num = ceil(other.num-(overheal*0.5));
				*/
			}
			else
			{
				my_health = min(my_health + other.num, maxhealth);	
			}
			if race==9 || race=12//Chicken maxhealth regain
			{
				var targetHealth = 8;
				if scrIsGamemode(5)
					targetHealth = 1;
				if skill_got[1] == 1//Rhino skin
					targetHealth += 4;
				if skill_got[33]//Glass arm cannon
					targetHealth = max(1,targetHealth-2);
				if scrIsGamemode(9)
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
	}
}


