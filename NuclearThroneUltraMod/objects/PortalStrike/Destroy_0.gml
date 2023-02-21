if instance_exists(Player)
{
	with Player
	{
		portalstrikesusedthislevel++;
			if portalstrikesusedthislevel>=8
				scrUnlockCSkin(22,"FOR USING EIGHT PORTAL STRIKES#IN ONE AREA",0);
	}
	
	if (Player.ultra_got[88])
	{
		Player.rad -= 95//Also in scrPowers
	}
	else
	{
		with Player
		{
			rogueammo--;
			if ultra_got[85]
			{
				var num = 1;
				if skill_got[9]
				{
					num = 2;
					with instance_create(x,y,HealFX)
						sprite_index = sprHealBigFX;
					snd_play(sndHealthPickupUpg);
				}
				else
				{
					instance_create(x,y,HealFX);
					snd_play(sndHealthPickup);
				}
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
