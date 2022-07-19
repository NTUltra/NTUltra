/// @description EAT
with Player
{
	if bwep != 0
	{

		if string_copy(wep_name[wep],0,5) = "ULTRA"
		{
			scrRaddrop(12);
			scrUnlockCSkin(8,"FOR EATING AN ULTRA WEAPON",0);
		}
		else if string_copy(wep_name[wep],0,5) = "HYPER" || wep = 131//heavy hyper shit
		{
			scrUnlockBSkin(8,"FOR EATING A HYPER WEAPON",0);
		}

		if string_copy(wep_name[wep],0,4) = "GOLD"
		{
			if bskin=0//Robot secret golden skin
			{
				spr_idle=sprMutant8DIdle;
				spr_walk=sprMutant8DWalk;
				spr_hurt=sprMutant8DHurt;
				spr_dead=sprMutant8DDead;
			}
			repeat(4)
			{if random(maxhealth) > my_health and Player.crown != 2
			instance_create(x,y,HPPickup)
			else
			instance_create(x,y,AmmoPickup)}
		}
		var r = 5;
		
		var hasUltra = false;
		if ultra_got[32]
		{
		hasUltra = true;
		with instance_create(x,y,RobotTurret)
		{
			wepmod1 = other.wepmod1;
			wepmod2 = other.wepmod2;
			wepmod3 = other.wepmod3;
			wepmod4 = other.wepmod4;
			curse = other.curse;
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),11);
			wep = other.wep
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

		with instance_create(x,y,RobotEat)
		image_xscale = Player.right

		

		if curse = 1
		{
			curse = 0
			my_health -= 7
			repeat(10)
				instance_create(x+random(16)-8,y+random(16)-8,Curse)
		}
		
		if ultra_got[29] && altUltra && bwep != 0//ROBOT EXCLUSIVE TASTE
		{
			maxhealth += 4;
		}

		if ultra_got[31]&&cwep!=0{//robot 3 weps A B C
		scrSwapWeps()// B C A
		cwep=0; // B C x
		}
		else{
		scrSwapWeps()
		bwep = 0}

		if skill_got[5] = 1
		{
			snd_play_2d(sndRobotEatUpg)
			r += 4;
			if my_health < maxhealth
				instance_create(x,y,HPPickup);
			else
				instance_create(x,y,AmmoPickup);
		}
		else
			snd_play_2d(sndRobotEat);
			
		if random(maxhealth) > my_health and Player.crown != 2
			instance_create(x,y,HPPickup)
		else
			instance_create(x,y,AmmoPickup)
		
		if ultra_got[29] || ultra_got[30] || ultra_got[31] || ultra_got[32]
			r += 2;
		scrRaddrop(r);
		breload = min(breload,0)
		instance_create(x,y,Smoke)

		//ROBOT Ultra B Regurgitate
		if ultra_got[30]==1
		{
			hasUltra = true;
		    if random(100) < 50 + (skill_got[23]*10)//original 43% chance
		    {
				snd_play_2d(sndRegurgitate);
		        var dir;
		        dir=random(100);
		        {
		            if dir>77
		            {
						instance_create(x,y,AmmoChest);
		            }
		            else if dir>52
		            {
						instance_create(x,y,HealthChest);
		            }
		            else if dir>27
		            {
						instance_create(x,y,RadChest);
		            }
		            else if dir<=27//slightly higher chance for weapon chest cus robot luv weps
		            {
						instance_create(x,y,WeaponChest);
		            }
		        }
		    }
		}
		if ultra_got[31]
		{
			hasUltra = true;
			scrRaddrop(14);
		}
		if hasUltra || ultra_got[29]
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
