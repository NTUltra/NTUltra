/// @description Collect
if instance_exists(Player)
{
	instance_destroy();
	with Player
	{
		var add = 10;
		if scrIsCrown(4)
			add += 1.8;
		else if scrIsCrown(18)
			add += 5;
		if UberCont.radUp
			add += 1.5;
		if ultra_got[83]
			add += 2;
		rad += add;
		if skill_got[36]
		{
			var radd = add*0.4;
			reload -= radd;
			breload -= radd;
			creload -= radd;
			if canHeal
			{
				radPickedUp += add;
				if radPickedUp > maxRadPickedUp
				{
					radPickedUp -= maxRadPickedUp;
					instance_create(x,y,HealAbsorbingPores);
					var num = 1;
					if skill_got[9]
					{
						num = 2;
						snd_play(sndAbsorbingPoresHealUpg);
					}
					else
						snd_play(sndAbsorbingPoresHeal);
				
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
					if my_health + num <= maxhealth
						my_health += num
					else// if Player.crown != 2
						my_health = max(my_health,maxhealth);
				}
			}
		}
	}
	snd_play(sndRadPickup)

	if Player.skill_got[3]//Pluto
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprEatBigRad;
	}
	else
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprEatBigRadPlut;
	}
}
