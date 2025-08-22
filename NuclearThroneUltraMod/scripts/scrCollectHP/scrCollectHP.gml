///scrCollectHP();
// /@description
///@param
function scrCollectHP(num = 2){
	if num < 1
		exit;
	if isArmour
	{
		num = 1;
	
		//if Player.skill_got[9]
		//	num = 2;
		var excessArmour = Player.armour + num - Player.maxarmour;
		if excessArmour > 0
			scrExcessResource(8,excessArmour);
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
			dir.mytext = "+"+string(num)+" ARMOUR"
			if Player.armour >= Player.maxarmour
			dir.mytext = "MAX ARMOUR"
		}
		with Player
		{
			armour = min(maxarmour,armour + num);
		}
		with instance_create(x,y,SmallChestPickup)
		{
			image_angle = other.image_angle;
			if instance_exists(Player) && Player.skill_got[3]
			{
				sprite_index = sprPickupArmourPickupUpg;
				motion_add(image_angle - 90,2);
			}
			else
			{
				sprite_index = sprPickupArmourPickup
				motion_add(image_angle - 90,0.5);
			}
		}
		snd_play(sndArmourHeal);
	}
	else
	{
		if Player.skill_got[9]
		{
			with YungCuzDupe
			{
				my_health = min(my_health + 1, maxhealth);
				instance_create(x,y-2,HealFX)
			}
			with instance_create(x,y,HealFX)
			{
				sprite_index = sprHealBigFX;
			}
			snd_play(sndHealthPickupUpg)
			
			if Player.race=25 && random(10)<5//mutation smith/doctor
				num = ceil(num * 2.25);
			else
				num *= 2;

		}
		else
		{
			snd_play(sndHealthPickup)

			instance_create(x,y,HealFX)
		}
		//RUSH CROWN
		if scrIsCrown(4)
			num += 1
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
			scrRaddrop(num);
		}
		if scrIsGamemode(9) //Casual mode
			num +=1;

		scrPhotosythesis(num);
		if Player.my_health + num <= Player.maxhealth + Player.defaultOverhealAddition
			Player.my_health += num
		else// if Player.crown != 2
		{
			var excessHealth = Player.my_health + num - Player.maxhealth + Player.defaultOverhealAddition;
			scrExcessResource(0,excessHealth);
			Player.my_health = max(Player.my_health,Player.maxhealth + Player.defaultOverhealAddition);
		}

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
		if instance_exists(Player) && Player.skill_got[3]
		{
			with instance_create(x,y,SmallChestPickup)
			{
				image_angle = other.image_angle;
				sprite_index = sprSmallChestPickupUpg;
				motion_add(image_angle - 90,2);
			}
		}
		else
			with instance_create(x,y,SmallChestPickup)
			{
				image_angle = other.image_angle;
				motion_add(image_angle - 90,0.5);
			}
	}
}