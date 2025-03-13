/// @description Collect
if instance_exists(Player)
{
	if isBeingVoided != 1
		instance_destroy();
	with Player
	{
		var add = other.radValue;
		if scrIsCrown(4)
			add += 1.8;
		else if scrIsCrown(18)
			add += 6;
		if UberCont.radUp
			add += 1;
		if ultra_got[83]
			add += 2;
		rad += add;
		with PlagueBringer
		{
			totalRadsCollected += add;	
		}
		if skill_got[36]
		{
			var radd = add*0.3;
			reload -= radd;
			breload -= radd;
			creload -= radd;
			if race == 20 && skill_got[maxskill + 1]//Piggy bank
				piggyBank += add*0.25;
			if canHeal
			{
				radPickedUp += add;
				var mr = maxRadPickedUp;
				if loops > 0
					mr += 10;
				if radPickedUp > mr
				{
					radPickedUp -= mr;
					instance_create(x,y,HealAbsorbingPores);
					var num = 1;
					/*
					if skill_got[9]
					{
						num = 2;
						snd_play(sndAbsorbingPoresHealUpg);
					}
					else
						snd_play(sndAbsorbingPoresHeal);
					*/
					scrPhotosythesis(num);
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
		if ultra_got[88] == 1
		{
			var ac = accuracy;
			with instance_create(other.x,other.y,UltraLightning)
			{
				image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(40)-20)*ac
				team = 2
				ammo = 2+add+random(add)//60
				///if Player.ultra_got[59]=1 
				///ammo+=4;
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
				image_angle = Player.image_angle
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
