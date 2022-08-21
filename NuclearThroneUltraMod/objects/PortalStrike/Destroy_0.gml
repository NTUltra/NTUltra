if instance_exists(Player)
{
	if (Player.ultra_got[88])
	{
		Player.rad -= 100//Also in scrPowers
	}
	else
	{
		with Player
		{
			rogueammo--;
			if ultra_got[85]
			{
				instance_create(x,y,HealFX);
				var num = 1;
				if skill_got[9]
					num = 2;
				if my_health + num <= maxhealth
					my_health += num
				else// if Player.crown != 2
					my_health = max(my_health,maxhealth);
				if UberCont.opt_ammoicon
				{
					var dir = instance_create(x,y,PopupText)
					dir.sprt = sprHPIconPickup;
					dir.mytext = "+"+string(num)
					if my_health = maxhealth
					dir.mytext = "MAX"
					else if my_health > maxhealth
					dir.mytext = "OVER MAX"
				}
				else
				{
					var dir = instance_create(x,y,PopupText)
					dir.mytext = "+"+string(num)+" HP"
					if my_health = maxhealth
					dir.mytext = "MAX HP"
					else if my_health > maxhealth
					dir.mytext = "OVER MAX HP"
				}
			}
		}
	}
}
