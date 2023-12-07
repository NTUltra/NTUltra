/// @description EAT
with Player
{
	if bwep != 0
	{
		//reload stuff
		var lowa = 0;
		var lowb = 0;
		var lowc = 0;
		if skill_got[35]
		{
			lowa = wep_load[wep]*-2;
			lowb = wep_load[bwep]*-2;
			lowc = wep_load[cwep]*-2;
		}
		else if curse = 1
		{
			curse = 0
			my_health -= 7
			repeat(10)
				instance_create(x+random(16)-8,y+random(16)-8,Curse)
		}
		reload = lowa;
		breload = lowb;
		creload = lowc;
		
		if ultra_got[29] && altUltra && cwep == 0//ROBOT EXCLUSIVE TASTE
		{
			maxhealth += 4;
		}
		var eatWep = wep;
		if ultra_got[31]&&cwep!=0{//robot 3 weps A B C
		scrSwapWeps()// B C A
		cwep=0; // B C x
		}
		else{
		scrSwapWeps()
		bwep = 0}
		
		if ultra_got[30]
		{
			with instance_create(x,y,RobotTurret)
			{
				wepmod1 = other.wepmod1;
				wepmod2 = other.wepmod2;
				wepmod3 = other.wepmod3;
				wepmod4 = other.wepmod4;
				isPermanent = other.isPermanent;
				hasBeenEaten = other.hasBeenEaten;
				curse = other.curse;
				motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),14);
				wep = eatWep
				spr_idle=wep_sprt[wep];

				if wep_type[wep]=0
				{//melee
					//wepammo=7+irandom(5);
					wepammo=12+irandom(8);
					wepcost=1;
				}
				else
				{
					wepcost=max(0.1,wep_cost[wep])
					wepammo=round(max(typ_ammo[wep_type[wep]]*3,wepcost*2));
				}
				reload=wep_load[wep]*0.5;
				alarm[0]=clamp(reload*0.5,5,60);
			}
		}
		
		//AND NOW THE EAT LOGIC
		scrBasicRobotEat(x,y,eatWep);
		breload = min(breload,0);
		//DONT NEED THIS IN AUTO EAT
		if ultra_got[30] || ultra_got[29] || ultra_got[31]// || ultra_got[32]
		{
			var langle = random(360);
			var langstep = 360/8;
			snd_play_2d(sndThunder);
			repeat(8)
			{
				with instance_create(x,y,UltraLightning)
				{
					image_angle = langle;
					team = 2
					ammo = 12+random(6)+(other.skill_got[5]*10)//60
					alarm[0] = 1;
					//event_perform(ev_alarm,0);
					visible = 0
					with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
				}
				langle += langstep;
			}
		}	
	}
}
instance_destroy();
