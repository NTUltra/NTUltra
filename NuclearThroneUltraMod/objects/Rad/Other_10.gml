/// @description Collect
if instance_exists(Player)
{
	instance_destroy()
	with Player
	{
		var add = 1;
		if scrIsCrown(4)
			add += 0.18;
		else if scrIsCrown(18)
			add += 0.5;
		if UberCont.radUp
			add += 0.1;
		if ultra_got[83]
			add += 0.2;
		rad += add;
		if race == 20 && skill_got[maxskill + 1]//Piggy bank
			piggyBank += add*0.25;
		snd_play_2d(sndRadPickup,0.05,true);
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
					snd_play(sndHealthPickup);
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
		if ultra_got[88]//Ultra popo
		{
			var ac = accuracy;
			with instance_create(x,y,UltraLightning)
			{
				image_angle = point_direction(other.x,other.y,UberCont.mouse__x,UberCont.mouse__y)+(random(40)-20)*ac
				team = 2
				ammo = 2+(add*2)+irandom(8)//60
				///if Player.ultra_got[59]=1 
				///ammo+=4;
				event_perform(ev_alarm,0)
				with instance_create(x,y,LightningSpawn)
				image_angle = Player.image_angle
			}
		}
	}
	if Player.skill_got[3]//Pluto
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprEatRad;
	}
	else
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprEatRadPlut;
	}
}
