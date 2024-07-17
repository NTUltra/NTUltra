if !instance_exists(GenCont)
{

	scrChestOpenMindReload(other);
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
			popupT = instance_create(x,y,PopupText)
			popupT.sprt = sprArmourIconPickup;
			popupT.mytext = "+"+string(num)
			if Player.armour >= Player.maxarmour
				popupT.mytext = "MAX"
		}
		else
		{
			popupT = instance_create(x,y,PopupText)
			popupT.mytext = "+"+string(num)+" HP"
			if Player.armour >= Player.maxarmour
				popupT.mytext = "MAX ARMOUR"
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
		if other.my_health >= other.maxhealth
		{
			num = 1;
			if other.skill_got[9]
				num = 2;
		}
		if UberCont.opt_ammoicon
		{
			var popupT = instance_create(x,y,PopupText)
			popupT.sprt = sprHPIconPickup;
			popupT.mytext = "+"+string(num)
			if other.my_health = other.maxhealth
				popupT.mytext = "MAX"
			else if other.my_health > other.maxhealth
				popupT.mytext = "+"+string(ceil(num))+" OVERHEAL!"
		}
		else
		{
			var popupT = instance_create(x,y,PopupText)
			popupT.mytext = "+"+string(num)+" HP"
			if other.my_health = other.maxhealth
			popupT.mytext = "MAX HP"
			else if other.my_health > other.maxhealth
			popupT.mytext = "+"+string(num)+" HP OVERHEAL!"
		}
		with other {
			//OVERHEAL
			if my_health >= maxhealth
			{
				my_health += other.num;
				var maxCap = floor(max(maxhealth*2,10));
				my_health = min(my_health,maxCap);
				if (my_health == maxCap)
				{
					popupT.myText = "MAX OVERHEAL!";
				}
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
				var targetHealth = scrGetMaxPossibleHealth();
				if skill_got[9] 
					mHpI *= 2;
			    if maxhealth<targetHealth
			    {
				    maxhealth = min(maxhealth + mHpI,targetHealth);
			    }
			}
		}
	}
}


