if instance_exists(Player)
{
	with Player
	{
		portalstrikesusedthislevel++;
			if portalstrikesusedthislevel>=8
				scrUnlockCSkin(22,"FOR USING EIGHT PORTAL STRIKES#IN ONE AREA",0);
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
			scrHeal(num);
		}
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
		}
	}
}
