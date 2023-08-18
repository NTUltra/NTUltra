///scrCollectHP();
// /@description
///@param
function scrCollectHP(num = 2){

	if isArmour
	{
		num = 1;
	
		if Player.skill_got[9]
			num = 2;
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
			armour = min(maxarmour,armour + num);
		}
		with instance_create(x,y,SmallChestPickup)
		{
			sprite_index = sprPickupArmourPickup
		}
		snd_play(sndArmourHeal);
	}
	else
	{

		if Player.skill_got[9]
		{
			with instance_create(x,y,HealFX)
			{
				sprite_index = sprHealBigFX;
			}
			snd_play(sndHealthPickupUpg)
			if Player.skill_got[36]
			{
				/*
				var d = point_direction(x,y,other.x,other.y)
				with instance_create(other.x + lengthdir_x(4,d),other.y + lengthdir_y(4,d),Rad)
				{
					motion_add(d,2);
				}
				*/
				speed = 6;
				scrRaddrop(3);
			}	
		if Player.race=25 && random(5)<3//mutation smith/doctor
		num = 5
		else
		num = 4;

		}
		else
		{
			snd_play(sndHealthPickup)

			instance_create(x,y,HealFX)
		}

		if scrIsGamemode(9) //Casual mode
			num +=1;


		//RUSH CROWN
		if scrIsCrown(4)
		num += 1
		if scrIsHardMode()//HARD MODE
		{
			num = round(num*0.5);
			if Player.skill_got[9] = 1
				num ++;
		}
		if Player.my_health + num <= Player.maxhealth
			Player.my_health += num
		else// if Player.crown != 2
			Player.my_health = max(Player.my_health,Player.maxhealth);

		if UberCont.opt_ammoicon
		{
			dir = instance_create(x,y,PopupText)
			dir.sprt = sprHPIconPickup;
			dir.mytext = "+"+string(num)
			if Player.my_health = Player.maxhealth
			dir.mytext = "MAX"
			else if Player.my_health > Player.maxhealth
			dir.mytext = "OVER MAX"
		}
		else
		{
			dir = instance_create(x,y,PopupText)
			dir.mytext = "+"+string(num)+" HP"
			if Player.my_health = Player.maxhealth
			dir.mytext = "MAX HP"
			else if Player.my_health > Player.maxhealth
			dir.mytext = "OVER MAX HP"
		}
		instance_create(x,y,SmallChestPickup)
	}
}