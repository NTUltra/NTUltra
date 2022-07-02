/// @description
function scrPowers() {
	/////SHIT PRESSED////////
	if KeyCont.key_spec[p] = 1
	{
		if race == 27 && (!instance_exists(Hand) || (ultra_got[107] && instance_exists(Hand) && instance_number(Hand) < 2 || (scrIsInInvertedArea() && instance_number(Hand) < 2)))//Hands
		{
			var targetPickup = false;
			var grabRange = 48;//same as hunter mark
			var d0 = 999;
			var d1 = 999;
			var d2 = 999;
			var d3 = 999;
			var tar = -1;
			var resulttar = -1;
			var grabbedEnemy = false;
			var slappedProjectile = false;
			//Ultra target projectiles
			if ultra_got[107]
			{
				if instance_exists(projectile)
				{
					tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,projectile);
					if tar.team != other.team
					{
						d0 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y)
						if d0 < grabRange
						{
							resulttar = tar;
							slappedProjectile = true;
						}
					}
				}
				if instance_exists(PopoNade)
				{
					var tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,PopoNade);
					if tar.team != other.team
					{
						var dp = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y)
						if dp < grabRange && dp < d0
						{
							d0 = dp;
							resulttar = tar;
							slappedProjectile = true;
						}
					}
				}
			}
			if instance_exists(chestprop)
			{
				tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,chestprop);
				d1 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y)
				if d1 < grabRange && d1 < d0
				{
					resulttar = tar;
					slappedProjectile = false;
				}
			}
			if instance_exists(RadChest)
			{
				tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,RadChest);
				d2 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y) 
				if d2 < grabRange && d2 < d1 && d2 < d0
				{
					resulttar = tar;
					slappedProjectile = false;
				}
			}
			if instance_exists(enemy)
			{
				tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,enemy);
				d3 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y);
				if ((tar.team != 0  && tar.team != team && tar.my_health > 0 || (skill_got[5] && (tar.object_index == IDPDVan || tar.object_index == IDPDVanVertical)))
				&& tar.team != team && d3 < grabRange && d3 < d2 && d3 < d1 && d3 < d0)
				{
					grabbedEnemy = true;
					resulttar = tar;
					slappedProjectile = false;
				}
			}
			if ultra_got[108] && resulttar == -1
			{
				//Allow pickups to be picked up
				if instance_exists(WepPickup)
				{
					tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,WepPickup);
					var d4 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y);
					if (d4 < grabRange)
					{
						resulttar = tar;
						slappedProjectile = false;
					}
				}
				if instance_exists(Pickup) && resulttar == -1
				{
					tar = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,Pickup);
					var d4 = point_distance(UberCont.mouse__x,UberCont.mouse__y,tar.x,tar.y);
					if (d4 < grabRange)
					{
						resulttar = tar;
						targetPickup = true;
						slappedProjectile = false;
					}
				}
			}
			if resulttar > -1 && instance_exists(resulttar)
			{
				BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,resulttar.x,resulttar.y))*UberCont.opt_shake
				BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,resulttar.x,resulttar.y))*UberCont.opt_shake
				BackCont.shake += 5;
				with instance_create(x,y,Hand)
				{
					if other.ultra_got[107]
					{
						alarm[3] = 1;//Destroy projectiles
					}
					if other.bskin == 2
					{
						sprite_index = sprHandCOpen;
						spr_close = sprHandCClose;
						spr_closing = sprHandCClosing;
						if !scrIsInInvertedArea()
							lerpSpeed *= 0.85;//Slower hand
					}
					else if other.bskin == 1
					{
						sprite_index = sprHandBOpen;
						spr_close = sprHandBClose;
						spr_closing = sprHandBClosing;
						if other.ultra_got[106]
						{
							alarm[4] = 1;
						}
					}
					if (other.skill_got[5])
					{
						dmg += 2;
					}
					if other.ultra_got[105] || other.ultra_got[106] || other.ultra_got[107] || other.ultra_got[107]
						dmg ++;
					grabbingPickup = targetPickup;
					team = other.team;
					creator = other.id;
					target = resulttar;
					lerpDistance = point_distance(x,y,target.x,target.y);
					if other.ultra_got[108]
					{
						if scrIsInInvertedArea()
						{
							if (grabbingPickup)
							{
								lerpSpeed *= 4;	
							}
							else
							{
								lerpSpeed *= 3;
							}
						}
						else
						{
							if (grabbingPickup)
							{
								lerpSpeed *= 2;
							}
							else
							{
								lerpSpeed *= 1.5;
							}
						}
					}
					if slappedProjectile
					{
						push = false;
						lerpDistance += 8;
						lerpCalc = min(1,lerpSpeed/lerpDistance);//Consistent speed
						lerpCalcBack = lerpCalc;
						grabbingPickup = true;
						//PUNCH FIST!
						sprite_index = spr_close;
						spr_closing = spr_close;
					}
					else if other.skill_got[5] && grabbedEnemy && !grabbingPickup
					{
						push = true;
						lerpDistance += 8;
						lerpCalc = min(1,lerpSpeed/lerpDistance);//Consistent speed
						lerpCalcBack = lerpCalc*0.8;
						//PUNCH FIST!
						sprite_index = spr_close;
						spr_closing = spr_close;
					}
					else if !grabbingPickup
					{
						lerpCalc = min(1,lerpSpeed/lerpDistance);//Consistent speed
						lerpCalcBack = (lerpCalc/target.size)*0.8;
					}
					else//ULTRA D
					{
						lerpCalc = min(1,(lerpSpeed)/lerpDistance);
						lerpCalcBack = lerpCalc;
					}
				}
			}
		}
	if race = 26//Good O'l Humphry
	{
		var t1 = wep_type[wep];
		var t2 = wep_type[bwep];
		var al = 5;//weapon types total
		var takePercentage = 0.015//1.5%%//0.0075;//0.75%
		var insufficientFunds = true;
		for (var i = 0; i < al; i++) {
			if (i != t1 && i != t2)
			{
				if (ammo[i] > 1 && ammo[i] - typ_amax[i]*takePercentage > 0)
				{
					ammo[i] = max(1,ammo[i] - typ_amax[i]*takePercentage);
					insufficientFunds = false;
				}
					
			}
		}
		if (insufficientFunds)
		{
			snd_play_2d(snd_lowa,0,true,false,10);
		}
		else
		{
			var effective = false;
			with projectile
			{
				if (team!= other.team
				&& x > other.x - 170 && x < other.x + 170 && y > other.y - 130 && y < other.y + 130)
				{
					if (image_xscale > 0.15 + (other.ultra_got[104]*0.6) && image_yscale > 0.2 && speed > 1)
					{
						image_xscale *= 0.75;
						image_yscale *= 0.75;
						effective = true;
						speed *= 0.4;
					} else if (other.ultra_got[104])
					{
						effective = true;
						with instance_create(x,y,Notice)
						{
							sprite_index = sprHumphryDestroyProjectile;	
						}
						instance_destroy();	
					}
				}
			}
			with PopoNade
			{
				instance_destroy(id,false);	
			}
			if (effective)
			{
				Sleep(40);
				snd_play_2d(sndChickenStart);
				instance_create(x,y,HumphryDiscipline);
			}
			else
			{
				snd_play_2d(sndChickenStart);
			}
		}
	}

	if race = 23 //Frog
	{
	if skill_got[5]=1
	{
	snd_play_2d(sndFrogStartButt);
	snd_loop(sndFrogLoopButt);
	}
	else
	{
	snd_play_2d(sndFrogStart);
	snd_loop(sndFrogLoop);
	}
	}

	if race = 25//Mutation doctor
	{

	if ultra_got[99]
	{//necro doctor
    
	if instance_exists(Corpse)
	{
	//snd_play_2d(sndNecromancerRevive)
	        //audio_stop_sound(sndBouncerHitWall)
        
	    with Corpse
	    {
	    if image_speed = 0 and (instance_number(enemy) > 0 or instance_exists(Portal)) and x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	        {
        
	        if !audio_is_playing(sndNecromancerRevive)
	        {
				audio_sound_pitch(sndNecromancerRevive,random_range(1.1,1.5))
				audio_play_sound(sndNecromancerRevive,90,0)
	        }
        
        
        
	        instance_destroy()
	        with instance_create(x,y,BloodStreak)
	        {
	        motion_add(point_direction(Player.x,Player.y,x,y),8)
	        image_angle = direction
	        }
        
	        instance_create(x,y,Scorchmark)
	        instance_create(x,y,AllyFreak);
	        //instance_create(x,y,AllyFreak);
	        }
	    }
	}

	}
	else if ultra_got[98]
	{

	if rad>21
	{
		audio_stop_sound(sndMutant0Slct)
		audio_sound_pitch(sndMutant0Slct,random_range(0.6,0.9))
		audio_play_sound(sndMutant0Slct,90,0)
		instance_create(UberCont.mouse__x,UberCont.mouse__y,Infect);
		if skill_got[5]
		{
			rad -= 9;
		}
		else
		{
			rad-=16;
		}
	}
	else
		scrEmptyRad();

	}
	else if alarm[3]<1 
	{
	//Regular active   
    
	    my_health--;
	    exception=true;
    
	    if my_health<=0 //KILL YOSELF USING ACTIVE
	    {
    
	    if skill_got[25]//strong spirit
	    {
	    if strongspirit==true&&strongspiritused==false
	    {
	    snd_play_2d(sndStrongSpiritLost);
	    my_health=1;
	    alarm[1]=20;//invincibility 
	    strongspiritused=true;
	    strongspirit=false;
	    }
	    else
			scrUnlockCSkin(25,"HAHAHAHAHA!",0);
	    }
	    else
			scrUnlockCSkin(25,"HAHAHAHAHA!",0);
    
	    }
    
	    //if my_health<1&&strongspirit
	    image_index=0;
	    sprite_index=spr_hurt;
	    snd_play_2d(snd_hurt, hurt_pitch_variation);

	    var raddrop=16;//13 An ally drops 5 rads
	    if skill_got[5]
	    raddrop=26;//19
    
	    repeat(raddrop)
	    {
	    with instance_create(x,y,Rad)
	    {motion_add(other.direction,other.speed)
	    motion_add(random(360),random(10*0.5)+3)
	    repeat(speed)
	    speed *= 0.9}
	    }
	}
    
    
	}

	if race = 16 && ((armour > 0 && !ultra_got[63]) || (ultra_got[63] && my_health > 3) || freeArmourStrike)//Viking
	{
	    //63
		if freeArmourStrike
		{
			freeArmourStrike = false;
		}
	    else if armour>0 && !ultra_got[63]
	        armour--;
	    else if ultra_got[63]
	    {
	        my_health -= 3;
	        exception=true
	    }
	    scrBlankArmour();
    
	    with instance_create(x,y,ArmourStrike)
	    {image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
	    Originalangle=image_angle;
	    team = other.team
	    ammo = 100;
	    event_perform(ev_alarm,0)
	    visible = 0
	    with instance_create(x,y,ArmourStrikeStart)
	    {
	    image_angle = other.image_angle
	    image_yscale=3;
	    }}
    
	    if ultra_got[61]//MEGA ARMOUR STRIKE
	    {
    
	    with instance_create(x,y,ArmourStrike)
	    {image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)-20
	    Originalangle=image_angle;
	    team = other.team
	    ammo = 100;
	    event_perform(ev_alarm,0)
	    visible = 0
	    with instance_create(x,y,ArmourStrikeStart)
	    {
	    image_angle = other.image_angle
	    image_yscale=3;
	    }}
    
	    with instance_create(x,y,ArmourStrike)
	    {image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+20
	    Originalangle=image_angle;
	    team = other.team
	    ammo = 100;
	    event_perform(ev_alarm,0)
	    visible = 0
	    with instance_create(x,y,ArmourStrikeStart)
	    {
	    image_angle = other.image_angle
	    image_yscale=3;
	    }}
    
    
	    BackCont.viewx2 += lengthdir_x(-8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	    BackCont.viewy2 += lengthdir_y(-8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	    BackCont.shake += 22
		snd_play_2d(sndVikingArmourStrikeUpg,0,true);
	    }
		else
			snd_play_2d(sndVikingArmourStrike,0,true);
    
	    BackCont.viewx2 += lengthdir_x(-6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	    BackCont.viewy2 += lengthdir_y(-6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	    BackCont.shake += 25

	}


	if race = 22 //Rogue
	{
		var radcost = 80;//Cost is also in portal
		var useRad = ultra_got[88] == 1
	if rogueammo > instance_number(PortalStrike) || (useRad && rad >= radcost*(1+instance_number(PortalStrike)))
	{
		//if useRad Ammo taken in portalstrike destroy
		//	rad -= radcost;
		portalstrikesusedthislevel++;
		if portalstrikesusedthislevel>=8
		scrUnlockCSkin(22,"FOR USING EIGHT PORTAL STRIKES#IN ONE LEVEL",0);

		with instance_create(UberCont.mouse__x,UberCont.mouse__y,PortalStrike)
		{
		if other.bskin=2
		sprite_index=sprRogueCStrike
		if other.skill_got[5]
		{
		upgraded=true;
		if other.bskin=2
		sprite_index=sprRogueCStrikeTB;
		else
		sprite_index=sprRogueStrikeTB;
		}

		}
		snd_play_2d(sndRogueAim);
	}
	else
	{
		snd_play_2d(sndPortalStrikeEmpty);
		if useRad
		{
			snd_play_2d(sndUltraEmpty);	
			with instance_create(x,y,PopupText)
			{mytext = "NOT ENOUGH#RADS"
			theColour=c_red;}
		}
		else
		{
			with instance_create(x,y,PopupText)
			{mytext = "NOT ENOUGH#PORTAL STRIKE AMMO"
			theColour=c_red;}
		}
	}


	}

	if race = 21//horror
	{

	if rad<=0
	{
		snd_play_2d(sndHorrorEmpty);
		scrEmptyRad();
	}
	else
	{

	//First rad for game feel
	rad--;

	    with instance_create(x+lengthdir_x(random(horrorcharge*0.7),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y(random(horrorcharge*0.7),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),HorrorBeam)
	    {
	    bskin=other.bskin
    
	    if bskin = 1
			sprite_index=sprHorrorBeamB;
	    else if bskin = 2
			sprite_index=sprHorrorBeamC;
    
	    originnr=instance_number(HorrorBeam);
    
	    image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
	    team = other.team
	    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),6);
	    ammo=50
	    charge=other.horrorcharge;
	    event_perform(ev_alarm,0)
	    rad=1;
	        with instance_create(x,y,LightningSpawn)
	        {
		        if other.bskin=1
					sprite_index=sprHorrorBeamSpawnB
		        else if other.bskin=2
					sprite_index=sprHorrorBeamSpawnC
		        else
					sprite_index=sprHorrorBeamSpawn
				image_angle = other.image_angle
	        }
	    }
	rad = max(rad,0);
	}

	}


	if race = 20 //business hog
	{
	instance_create(x,y,ShopWheel);
	}

	if race = 19&&wep_type[wep]!=0&&can_shoot=1 //&& my_health > 1//SKELETON
	{

	snd_play_2d(sndBloodGamble);

	scrFire();

	    //gamble some blood
	    if (wep_cost[wep]/typ_ammo[wep_type[wep]] >random(1)*(1-(skill_got[5]*0.3333333333333333) )  )//(skill_got[5]*0.3333333333333333)  )//cost of shot divided by ammo pickup for weptype
	    {//thronebutt adds 1/3 chance of not taking damage
			my_health -= 1;
			exception=true;
			if my_health == 0
			{
				if skill_got[32] && isAlkaline
				{
					isAlkaline = false;
					var h = 2;
					if (skill_got[9]) //Second stomache
						h = 4;
					my_health = min(h,maxhealth);
					with instance_create(x,y,HealFX)
					{
						depth = other.depth - 1;	
					}
					with instance_create(x,y,SharpTeeth)
						owner=other.id;
					snd_play(sndHealthPickup)
					var pt = instance_create(x,y,PopupText)
					if UberCont.opt_ammoicon
					{
						if my_health = maxhealth
							pt.mytext = "MAX";
						else
							pt.mytext = "+"+string(h-1);
				
						pt.sprt = sprHPIconPickup;
					}
					else
					{
						if my_health = maxhealth
							pt.mytext = "MAX HP";
						else
							pt.mytext = "+"+string(h-1)+" HP";
					}
			
					alarm[3]=10;//duration of iframes
				}
				else if skill_got[25] && strongspirit == true && strongspiritused == false
				{
					snd_play(sndStrongSpiritLost);
				    my_health=1;
				    alarm[1]=20;//invincibility 
				    strongspiritused=true;
				    strongspirit=false;
				}
			}
    
			//if my_health<1&&strongspirit
			image_index=0;
			sprite_index=spr_hurt;
			snd_play_2d(snd_hurt, hurt_pitch_variation);
    
			repeat(3)
			{
			with instance_create(x,y,BloodStreak)
			{
			motion_add(random(360),8)
			image_angle = direction
			}
			}
	    }
    
	var t = wep_type[wep]
	ammo[t]+=wep_cost[wep]//return ammo
	rad+=wep_rad[wep]//return rad cost
	can_shoot=0;
	//Cap ammo
	ammo[wep_type[wep]] = min(ammo[wep_type[wep]],typ_amax[t]);
	rad = min(rad,GetPlayerMaxRad());

	if Player.ultra_got[74]//Meltings Damnation Ultra B
	{
		reload -= wep_load[wep]*0.8;//80 procent fire rate boost
	}



	}

	if race = 18//ANGEL
	{
	    if wep_type[wep] != 0
	    {
		    if ultra_got[70]//ULTRA B DECENT
		    {
			    if ( my_health-2>0 && ammo[wep_type[wep]] < typ_amax[wep_type[wep]]) && alarm[3]<1
			    {
				    var extra=0;
				    if Player.crown = 4
				    extra += 1
    
				    ammo[wep_type[wep]] += round((typ_ammo[wep_type[wep]]* (1.5+skill_got[5]) +extra))

				    if ammo[wep_type[wep]] > typ_amax[wep_type[wep]]
				    ammo[wep_type[wep]] = typ_amax[wep_type[wep]]
    
    
				    dir = instance_create(x,y,PopupText)
				    dir.mytext = "+"+string( round((typ_ammo[wep_type[wep]]* (1.5+skill_got[5]) +extra )) )+" "+string(typ_name[wep_type[wep]]) 
				    if ammo[wep_type[wep]] = typ_amax[wep_type[wep]]
				    dir.mytext = "MAX "+string(typ_name[wep_type[wep]])
    
    
				    my_health -= 2-skill_got[5];
    
				    //for rage and euphoria
				    exception=true;
				    if alarm[7]<1
				    alarm[7]=12;//reset the exception in 12 steps
    
				    snd_play_2d(snd_hurt, hurt_pitch_variation)
				    Sleep(40)
					instance_create(x,y,AngelActive);
					if ultra_got[72] {//Angel ascent
						instance_create(x,y,AngelActiveMouse);	
					}
			    }
		    }
			else
			{
				var multiply = 1.75;
				if skill_got[5]
					multiply -= 0.5;
				if my_health >= maxhealth
					multiply -= 1.25;
				multiply = max(0.2,multiply);
				var cost = round(typ_ammo[wep_type[wep]]*multiply);
			    if ammo[wep_type[wep]]-cost >= 0
			    {
					instance_create(x,y,AngelActive);
					if ultra_got[72] {//Angel ascent
						instance_create(x,y,AngelActiveMouse);	
					}
				    ammo[wep_type[wep]]-= cost//2.5?
					if UberCont.opt_ammoicon
					{
						dir = instance_create(x,y,PopupText)
						dir.sprt = sprAmmoIconsPickup
						dir.ii = wep_type[wep]-1;
						dir.theColour = c_red;
						dir.mytext = "-"+string(cost);
					}
					else
					{
						dir = instance_create(x,y,PopupText)
						dir.theColour = c_red;
						dir.mytext = "-"+string(cost)+" "+string(other.typ_name[wep_type[other.wep]])
					}
			        var num = 2
			        if Player.skill_got[9] = 1//secund tummy
			        num = 4
        
			        instance_create(x,y,HealFX)
        
			        //RUSH CROWN
			        if Player.crown = 4
			        num += 1
        
			        snd_play_2d(sndHealthPickup)
			        my_health += num
			        if my_health > maxhealth
			        my_health = maxhealth
        
			        if UberCont.opt_ammoicon
					{
						dir = instance_create(x,y,PopupText)
						dir.sprt = sprHPIconPickup;
						dir.mytext = "+"+string(num)
						if my_health = maxhealth
							dir.mytext = "MAX";
					}
					else
					{
						dir = instance_create(x,y,PopupText)
						dir.mytext = "+"+string(num)+" HP"
						if my_health = maxhealth
							dir.mytext = "MAX HP";
					}
			         //instance_create(x,y,HPPickup);
			         Sleep(40)
			    }
			    else
			    {
				    snd_play_2d(sndEmpty);
				    dir = instance_create(x,y,PopupText);
					dir.theColour = c_red;
				    dir.mytext = "NOT ENOUGH AMMO";
			    }
			}
		}
		else
		{
			snd_play_2d(sndEmpty);
		    dir = instance_create(x,y,PopupText);
			dir.theColour = c_red;
		    dir.mytext = "THIS DOESN'T USE AMMO";
		}

	}

	if race==17//weaponsmith
	{
	    if bwep!=0
		{
			instance_create(x,y,HoldToSmith);
		}
	}

	if race==15//Atom
	{
		var laserscale = 0.1;
	if ultra_got[60] && point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y)<300//Ultra D
	{
	var tel;
	tel=false;

	if instance_exists(enemy)
	{
	if (point_distance(UberCont.mouse__x,UberCont.mouse__y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)<300)
	{tel=true;}
	}
	if instance_exists(Corpse)
	{
	if (point_distance(UberCont.mouse__x,UberCont.mouse__y,instance_nearest(x,y,Corpse).x,instance_nearest(x,y,Corpse).y)<300)
	{tel=true};
	}


	if (tel==true)
	{
		
	    if place_meeting(UberCont.mouse__x,UberCont.mouse__y,Floor)
	    {
		    if alarm[3]<3
		    alarm[3]=3;//imunity
		    instance_create(x,y,Teleport);
		    snd_play_2d(sndHyperLightning);
		    repeat(5){
			    with instance_create(x,y,Smoke)
			    motion_add(random(360),1+random(3))
			}
    
		    x=UberCont.mouse__x;
		    y=UberCont.mouse__y;
		    BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
		    BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
		    BackCont.shake += 2    
    
		    if skill_got[5]//thronebutt
		    {
			    instance_create(x+random(24)-12,y+random(24)-12,PlasmaImpact);
			    snd_play_2d(sndLightning3);
				
				if Player.skill_got[17] = 1
					snd_play_fire(sndLaserUpg)
				else
					snd_play_fire(sndLaser)
				with instance_create(x,y,Laser)
				{
					image_angle = point_direction(x,y,other.xprevious,other.yprevious);
					image_yscale -= laserscale;
					team = other.team
					event_perform(ev_alarm,0)
				}

			    with instance_create(x,y,Lightning)
					{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(360))*other.accuracy
					team = other.team
					ammo = 6
					event_perform(ev_alarm,0)
					visible = 0
					with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle}
		    }
    
		    repeat(5) {
			    with instance_create(x,y,Smoke)
			    motion_add(random(360),1+random(3))
			}
	    }
	    else
	    {
		    if alarm[3]<1
		    alarm[3]=4;//imunity
			
		    instance_create(x,y,Teleport);
		    snd_play_2d(sndHyperLightning);
		    repeat(5){
		    with instance_create(x,y,Smoke)
		    motion_add(random(360),1+random(3))}
    
		    var xx;
		    var yy;
    
		    xx=32*(UberCont.mouse__x div 32);
		    yy=32*(UberCont.mouse__y div 32);
    
    
		    instance_create(xx,yy,FloorExplo);
    
    
		    instance_create(xx,yy,WallBreak);
    
    
		    mask_index=mskPickupThroughWall;
    
		    alarm[8]=2;
    
		    x=xx;
		    y=yy;
		    BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
		    BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
		    BackCont.shake += 2    
    
		    if skill_got[5]//thronebutt
		    {
			    snd_play_2d(sndLightning3);
			    instance_create(x+random(24)-12,y+random(24)-12,PlasmaImpact);
			
				if Player.skill_got[17] = 1
					snd_play_fire(sndLaserUpg)
				else
					snd_play_fire(sndLaser)
				with instance_create(x,y,Laser)
				{
					image_angle = point_direction(x,y,other.xprevious,other.yprevious);
					image_yscale -= laserscale;
					team = other.team
					event_perform(ev_alarm,0)
				}
			    with instance_create(x,y,Lightning)
				{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(360))*other.accuracy
				team = other.team
				ammo = 6
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
				image_angle = other.image_angle}
		    }
    
    
		    repeat(5){
		    with instance_create(x,y,Smoke)
		    motion_add(random(360),1+random(3))}
	    }
	}
	}
	else if place_meeting(UberCont.mouse__x,UberCont.mouse__y,Floor) and !place_meeting(UberCont.mouse__x,UberCont.mouse__y,Wall)//REGULAR
	{
	if alarm[3]<1
	alarm[3]=4;//imunity
	instance_create(x,y,Teleport);
	snd_play_2d(sndHyperLightning);
	repeat(5){
	with instance_create(x,y,Smoke)
	motion_add(random(360),1+random(3))}
	x = UberCont.mouse__x
	y = UberCont.mouse__y
	BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 2  
  
	    if skill_got[5]//thronebutt
	    {
			snd_play_2d(sndLightning3);
			instance_create(x+random(24)-12,y+random(24)-12,PlasmaImpact);
		
			if Player.skill_got[17] = 1
				snd_play_fire(sndLaserUpg)
			else
				snd_play_fire(sndLaser)
			with instance_create(x,y,Laser)
			{
				image_angle = point_direction(x,y,other.xprevious,other.yprevious);
				team = other.team
				image_yscale -= laserscale;
				event_perform(ev_alarm,0)
			}
    
		    if ultra_got[59]=1
			{

			    with instance_create(x,y,Lightning)
			{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(360))*other.accuracy
			team = other.team
			ammo = 9
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle}

			}
			else{

			with instance_create(x,y,Lightning)
			{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(360))*other.accuracy
			team = other.team
			ammo = 6
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle}

			}
	    }
    

	repeat(5){
	with instance_create(x,y,Smoke)
	motion_add(random(360),1+random(3))}
	}

	}

	if race==14//PANDA
	{
	if curse=0&&wep!=0{

		//snd_play_2d(sndEnemySlash);
		snd_play_2d(sndChickenThrow);

	    with instance_create(x,y,ThrowWep)
	    {
		    team=other.team;
		    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),16);
		    scrWeapons()
		    if other.ultra_got[54]=1
			{
			    //primary
			    var prevwep;
    
			    //if wep_area[other.wep]==-1//handling starting weapons
			    //wep_area[other.wep]=1 THE LOOPHOLE
    
			    prevwep=other.wep;
    
			    do {wep = round(random(maxwep-1)+1)}
			    until (wep_area[wep] = wep_area[prevwep])
				
			    curse = other.curse
			    wepmod1=other.wepmod1;
			    wepmod2=other.wepmod2;
			    wepmod3=other.wepmod3;
			    wepmod4=other.wepmod4;
    
			}
			else{
		    wep=other.wep;
			}
		    name = wep_name[wep]
		    //ammo = 50
		    type = wep_type[wep]
		    curse = other.curse
		    wepmod1=other.wepmod1;
		    wepmod2=other.wepmod2;
		    wepmod3=other.wepmod3;
		    wepmod4=other.wepmod4;
		    sprite_index = wep_sprt[wep]
	    }
	    BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	    BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	    BackCont.shake += 1
	    scrSwapWeps()
	    bwep = 0
	    }
	}

	if ultra_got[36]//CHICKEN VANISH
	{
	with instance_create(x,y,Decoy)
	alarm[0]=80;//decoy duration
	image_xscale=Player.right;
	}

	//YUNG CUZ
	if race==12
	{
		var canSpawn = true;
		if ultra_got[47] == 1
		{
			canSpawn = my_health-2 > 0;	
		}
		else
		{
			canSpawn = (maxhealth*0.75 >= 1);
		}
		if canSpawn {
		var xran;
		var yran;
		xran=random(22)-11;
		yran=random(22)-11;
		    if !place_meeting(x+xran,y+yran,Wall)
		    {//SPAWN BUDDY
		        if ultra_got[46]==1&&instance_number(YungCuzDupe)<3{
		        instance_create(x+xran,y+yran,YungCuzDupe);
		        snd_play_2d(sndMutant12Wrld)
		        Sleep(40)
		        }
		        else if ultra_got[46]==0{
		        instance_create(x+xran,y+yran,YungCuzDupe);
    
		    //for rage and euphoria
		    exception=true;
		    if alarm[7]<1
		    alarm[7]=12;//reset the exception in two steps
    
		        if ultra_got[47]{
					my_health-=2//1/8--->0.875
		        }
		        else{
					var percMax = floor(maxhealth*0.75);
					var lostHp = maxhealth - percMax;
					maxhealth=percMax;//0.5
					if my_health > maxhealth
						my_health = max(1,my_health-lostHp,maxhealth);
		        }
        
		        sprite_index = spr_hurt
		        image_index = 0
		        snd_play_2d(snd_hurt, hurt_pitch_variation)
		        Sleep(40)
		        }
		    }
		    else{//no place
		    //snd_play_2d(sndMutant12Slct)
    
		    //SPAWN BUDDY
		        if ultra_got[46]==1&&instance_number(YungCuzDupe)<3{
				instance_create(x,y,YungCuzDupe)
		        snd_play_2d(sndMutant12Wrld)
		        Sleep(40)
		        }
		        else if ultra_got[46]==0{
		        instance_create(x,y,YungCuzDupe);
    
		    //for rage and euphoria
		    exception=true;
		    if alarm[7]<1
		    alarm[7]=12;//reset the exception in two steps
    
		        if ultra_got[47]{
		        maxhealth=floor(maxhealth*0.875);//1/8
		        }
		        else{
		        maxhealth=floor(maxhealth*0.5);
		        }
		        if my_health>maxhealth
		        {my_health=maxhealth;}
        
		        sprite_index = spr_hurt
		        image_index = 0
		        snd_play_2d(snd_hurt, hurt_pitch_variation)
		        Sleep(40)
		        }
    
		    }
		}
	}

	// SHEEP
	if race==13
	{
		if (ultra_got[49] && !instance_exists(SheepHyperDash))
		{
			var takePercentage = 0.1;//10%
			var wepType = TargetWepTypeForAmmoConsumption(takePercentage);
			var cost = typ_amax[wepType]*takePercentage;
			if (wepType != 0 && ammo[wepType] - cost > 0)
			{
				ammo[wepType] =  ammo[wepType] - cost;
				var aimDir = point_direction(UberCont.mouse__x,UberCont.mouse__y,x,y);//Opposite of aimdir
				BackCont.viewx2 += lengthdir_x(32,aimDir)*UberCont.opt_shake;
				BackCont.viewy2 += lengthdir_y(32,aimDir)*UberCont.opt_shake;
				BackCont.shake += 10;
				snd_play_2d(sndSheepHyperDash);
				instance_create(x,y,SheepHyperDash);
				Sleep(5);
			}
			else
			{
				snd_play_2d(snd_lowa,0,true,false,10);
				BackCont.shake += 5;
			}
		}
		else
		{
		if !instance_exists(SheepStorm)
		with instance_create(x,y,SheepStorm)
		{
		team=other.team;
		}
		if skill_got[2]==1//extra feet
		{
		maxspeed=8;
		}
		else
		{
		maxspeed=7;
		}
		}
	}

	//ROBOT
	if race = 8
	{
		if instance_exists(HoldToEat)
		{
			with HoldToEat
				instance_destroy();
		}
		if bwep != 0
		instance_create(x,y,HoldToEat);
	}

	//FISH
	if race = 1
	{
		if speed < 0.4
			direction = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
		speed = 4
		if skill_got[2] == 1
		{
			speed = 8;
		}
		roll = 1
		rollIframe = 5;
		if skill_got[5]
			rollIframe = 8;
		alarm[3] += rollIframe;
		snd_play_2d(sndRoll)
		mask_index = mskPickupThroughWall;
		if skill_got[5] = 1
			snd_play_2d(sndFishRollUpg)

		instance_create(x,y,Dust)
	}

	//REBEL
	if race = 10 and my_health > 2 || (race = 10 && !(instance_exists(Ally)) && my_health > 1) && alarm[3]<1
	{canrebel = 1

	if !(instance_exists(Ally))
	{my_health -=1;}
	else{my_health -= 2;
	}
	exception=true;
	if alarm[7]<1
	alarm[7]=12;//reset the exception in two steps


	if skill_got[5] = 1
	snd_play_2d(sndSpawnSuperAlly)
	else
	snd_play_2d(sndSpawnAlly)
	with Ally
	{
	instance_create(x,y,HealFX)
	alarm[2] = 120

	if instance_exists(Player)
	{
	if Player.ultra_got[37]==1//Rebel Ultra A Personal Guard
	maxhealth=30;
	else
	maxhealth = 12;
	}


	}
	if Player.ultra_got[38]==1//Rebel Ultra B Riot
	{
	instance_create(x,y,Ally);
	}
	instance_create(x,y,Ally)

	sprite_index = spr_hurt
	image_index = 0



	snd_play_2d(snd_hurt, hurt_pitch_variation)
	Sleep(40)
	instance_create(x,y,Dust)


	}

	//CRYSTAL
	if race = 2 and !instance_exists(CrystalShield)//Change this ability to longer lasting shield.
	{
		instance_create(x,y,CrystalShield)
	}

	//MELTING
	if race = 4
	{
		var killedIt = false;
		
		
		with Corpse
		{
			if image_speed = 0 and (instance_number(enemy) > 0 or instance_exists(Portal)) and x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
			{
				
			if !killedIt
				snd_play(sndExplosion,0.1,true)
				
			killedIt = true;

			instance_destroy()
			with instance_create(x,y,BloodStreak)
			{
			motion_add(point_direction(Player.x,Player.y,x,y),8)
			image_angle = direction
			}
			instance_create(x,y,MeltSplat)
			if Player.skill_got[5] = 1 || size>1
			{
				ang = random(360)
				instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
				instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
				instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)
			}
			else
				instance_create(x,y,MeatExplosion)
			}
		}
		
		
		if ultra_got[13]{
			with enemy{
			if maxhealth<=5 and x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
			{//melting ultra a brain capacity
			MorphMe=true;
				if !killedIt
					snd_play(sndExplosion)
				killedIt = true;
			instance_destroy()
			with instance_create(x,y,BloodStreak)
			{
			motion_add(point_direction(Player.x,Player.y,x,y),8)
			image_angle = direction
			}
			instance_create(x,y,MeltSplat)//Scorchmark
			if Player.skill_got[5] = 1
			{
				ang = random(360)
				instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
				instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
				instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)
			}
			else
				instance_create(x,y,MeatExplosion)
			}
			} 
		}
		
		if killedIt && !audio_is_playing(sndCorpseExploUpg) && !audio_is_playing(sndCorpseExplo)
		{
			if Player.skill_got[5] = 1
				snd_play_2d(sndCorpseExploUpg)
			else
				snd_play_2d(sndCorpseExplo)	
		}

	}

	//PLANT
	if race = 5 && !ultra_got[19]
	{
	    if ultra_got[20]{//STEREO SNARES
	    with Tangle
	    {if instance_number(Tangle)>1
	    instance_destroy();}
	    with TangleSeed
	    {if instance_number(Tangle)>1
	    instance_destroy();}
	    }
	else{
	with Tangle
	instance_destroy()
	with TangleSeed
	instance_destroy()
	}

	with instance_create(x,y,TangleSeed)
	{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),12)
	image_angle = direction
	team = other.team}
	}

	scrYVPower();
	

	//HUNTER
	if (race == 11)
	{
		if Player.ultra_got[44]=1{//Hunter Ultra D CRACKSHOT
			if(instance_exists(enemy)){
				var n = instance_nearest(mouse_x,mouse_y,enemy)
				if (point_distance(mouse_x,mouse_y,n.x,n.y) < 48 && n.team != team && n.my_health > 0) {
					snd_play_2d(sndSniperTarget);

				    with instance_create(mouse_x,mouse_y,Marker) {
						target=instance_nearest(x,y,enemy);
						image_angle=30*(MarkerNr-1);
			        }
        
			        if instance_number(Marker)>3{//Override markers
						with Marker {
					        if (MarkerNr==1) {
								instance_destroy();
							}
					        MarkerNr-=1;
					        image_angle=30*MarkerNr;
						}
			        }
			    }
			    else {
					with Marker//if you place a marker not near an enemy all markers dissapear?
						instance_destroy();
				}
		    }
		}
		else
		{// marker ability
			if (instance_exists(Marker)){
				with Marker
					instance_destroy();
			}
			if (instance_exists(enemy)){
			
				var n = instance_nearest(mouse_x,mouse_y,enemy)
				if(point_distance(mouse_x,mouse_y,n.x,n.y) < 48 && n.team != team && n.my_health > 0)
				{
				    snd_play_2d(sndSniperTarget);
				    with instance_create(mouse_x,mouse_y,Marker) {
						target=instance_nearest(x,y,enemy);
				    }
			    }
			}
		}
	}

	}
	
	////////SHIT HELD////////
	if KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2
	{
		//YUNG VENUZ
		if (race == 6 && (ultra_got[24] == 1 || (altUltra && ultra_got[23])) && wep_auto[wep] == 1)
			scrYVPower();

	if ultra_got[19]//Plant sprint
	{/*
	if ultra_got[104]
	{
	with instance_create(x+lengthdir_x(random(4),random(360)),y+lengthdir_y(random(4),random(360)),Smoke)
	{motion_add(other.direction+180+random(40)-20,0.1+random(2))
	team = other.team}
	}
	else
	{*/
		with instance_create(x+lengthdir_x(random(4),random(360)),y+lengthdir_y(random(4),random(360)),Dust)
		{motion_add(other.direction+180+random(40)-20,0.1+random(2))
		team = other.team}
		//}

		if skill_got[2]==1//extra feet
		{
			maxspeed = 6.5;
			//maxspeed=5.7;
			//if ultra_got[104]
			//	maxspeed=7.7
		}
		else
		{
			maxspeed = 6;
		//maxspeed=5.2;
		//if ultra_got[104]
		//maxspeed=7.2
		}
		image_speed=0.6;
	}

	if race = 23 //Frog
	{

	if ultra_got[92]=0
	speed=0;

	    if toxicamount<maxtoxicamount
	    {
    
	    if ultra_got[90]//intimacy ultra
	    toxicamount+=2;
	    else
	    toxicamount++;
    
	    if ultra_got[91]//FROG MOMMA ULTRA C
	    {
    
	    if toxicamount = floor(maxtoxicamount*0.1)
			instance_create(x,y,FrogEgg);
    
	    }
    
    
	    }
	}


	//HORROR
	if race == 21 //&& random(2)<1// && !instance_exists(HorrorBeam)
	{



	if rad>0
	{

	if horrorcharge=origincharge
	snd_play_2d(sndHorrorBeam);

	if horrorcharge<maxcharge
	horrorcharge+=0.2+(skill_got[5]*0.3);

	if skill_got[5]
	{
	horrorhealtime++;

	    if horrorhealtime>115
	    {
	    if my_health<maxhealth
	    {
	        my_health++;
        
        
	        with instance_create(x,y,HealFX)
	        sprite_index=sprHorrorTB;
        
	        if my_health>=maxhealth
	        {
	        with instance_create(x,y,PopupText)
	        mytext = "MAX HP"
	        }
	        else
	        {
	            with instance_create(x,y,PopupText)
	            mytext = "+1"+" HP"
            
	        }    
	    }
        
	    horrorhealtime=0;
	    }

	if !(audio_is_playing(sndHorrorLoopTB))
	snd_loop(sndHorrorLoopTB);

    
	}
	else if !(audio_is_playing(sndHorrorLoop))
	snd_loop(sndHorrorLoop);

	if (horrorcharge>7||random(7)<horrorcharge||horrorcharge=origincharge)
	{

	// this makes the beam more efficient
	//if random(3)<2
	rad--;

	if horrorcharge>12&&random(2)<1
	{
		rad--;

	    with instance_create(x+lengthdir_x(random(horrorcharge*0.7),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y(random(horrorcharge*0.7),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),HorrorBeam)
	    {
	    bskin=other.bskin
	    if bskin = 1
			sprite_index=sprHorrorBeamB;
		else if bskin = 2
			sprite_index=sprHorrorBeamC;
    
	    originnr=instance_number(HorrorBeam);
    
	    image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
	    team = other.team
	    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),6);
	    ammo=50
	    charge=other.horrorcharge;
	    event_perform(ev_alarm,0)
	    rad=1;
	        with instance_create(x,y,LightningSpawn)
	        {
	        if other.bskin=1
				sprite_index=sprHorrorBeamSpawnB
			else if other.bskin=2
				sprite_index=sprHorrorBeamSpawnC
	        else
				sprite_index=sprHorrorBeamSpawn
	        image_angle = other.image_angle
	        }
	    }

	}

	with instance_create(x+lengthdir_x(random(horrorcharge*0.6),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y(random(horrorcharge*0.6),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),HorrorBeam)
	{
	bskin=other.bskin
	if bskin = 1
		sprite_index=sprHorrorBeamB;
	else if bskin = 2
		sprite_index=sprHorrorBeamC;

	originnr=instance_number(HorrorBeam);

	image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
	team = other.team
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),6);
	ammo=50
	charge=other.horrorcharge;
	event_perform(ev_alarm,0)
	rad=1;
	    with instance_create(x,y,LightningSpawn)
	    {
	    if other.bskin=1
			sprite_index=sprHorrorBeamSpawnB
		else if other.bskin=2
			sprite_index=sprHorrorBeamSpawnC
	    else
			sprite_index=sprHorrorBeamSpawn
	    image_angle = other.image_angle
	    }
	}

	}

	if random(4)<1
	{
	    with instance_create(x+lengthdir_x(random(horrorcharge*0.6),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y(random(horrorcharge*0.6),point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),HorrorBeam)
	    {
	    bskin=other.bskin
	    if bskin = 1
			sprite_index=sprHorrorBeamB;
		else if bskin = 2
			sprite_index=sprHorrorBeamC;
    
	    originnr=instance_number(HorrorBeam);
    
	    image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
	    team = other.team
	    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),6);
	    ammo=50
	    charge=other.horrorcharge;
	    event_perform(ev_alarm,0)
	    rad=1;
	        with instance_create(x,y,LightningSpawn)
	        {
	        if other.bskin=1
				sprite_index=sprHorrorBeamSpawnB
			else if other.bskin=2
				sprite_index=sprHorrorBeamSpawnC
	        else
				sprite_index=sprHorrorBeamSpawn
	        image_angle = other.image_angle
	        }
	    }
	}


	if BackCont.viewx2 < 8
	BackCont.viewx2 = lengthdir_x(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	if BackCont.viewy2 < 8
	BackCont.viewy2 = lengthdir_y(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 0.9


	}
	else if audio_is_playing(sndHorrorLoop)||audio_is_playing(sndHorrorLoopTB)
	{
	audio_stop_sound(sndHorrorLoop);
	audio_stop_sound(sndHorrorLoopTB);
	snd_play_2d(sndHorrorEmpty);
	}
	rad = max(rad,0);
	}


	if race==24 && !lockoutElementor//Elementor
	{
		var takePercentage = 0.0075;//0.75%
		if skill_got[5]
		{
			takePercentage = 0.005;//0.05%
		}
		var wepType = TargetWepTypeForAmmoConsumption(takePercentage);
		var cost = typ_amax[wepType]*takePercentage;
		if (wepType != 0 && ammo[wepType] - cost > 0)
		{
			var myMask = mask_index;
			mask_index=mskWall;
			var xx;
			var yy;
			xx=16*(UberCont.mouse__x div 16);
			yy=16*(UberCont.mouse__y div 16);
			if point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y)>16{
			    if place_meeting(xx,yy,Floor)&&place_free(xx,yy)&&!place_meeting(xx,yy,projectile)&&!place_meeting(xx,yy,enemy)&&!place_meeting(xx,yy,prop)&&!place_meeting(xx,yy,Sheep)&&!place_meeting(xx,yy,ExplosiveSheep)
			    {

			    //if place_meeting(xx+16,yy,Wall)||place_meeting(xx-16,yy,Wall)||place_meeting(xx,yy-16,Wall)||place_meeting(xx,yy+16,Wall)
			    //{
			    //here check if we don't block a path
			    snd_play_2d(sndStatueHurt);
    
			    with instance_create(xx,yy,VikingWall)
			    alarm[0]=15;
					
				ammo[wepType] =  ammo[wepType] - cost;

			    //}
			    }
    
			    //instance_create(xx,yy,Wall);
			    }
			mask_index=myMask;
		}
		else
		{
			lockoutElementor = true;
			snd_play_2d(snd_lowa,0,true,false,10);
			BackCont.shake += 5;
		}
	}


	//CHICKEN
	if race = 9 && !(instance_exists(GenCont))
	{
		room_speed=24;//15

		if (ultra_got[35])
		{
			var pslow = 0.5;
			if skill_got[12]
				pslow = 0.6;
			with projectile
			{
				if team == other.team
				{
					x -= hspeed;
					y -= vspeed;
					speed += friction;
				}
				else
				{
					x -= hspeed*pslow;
					y -= vspeed*pslow;
				}
			}
			with MeleeParent
			{
				image_speed *= 4;
			}
		}
		else
		{
			with projectile
			{
				x -= hspeed*0.1;
				y -= vspeed*0.1;
			}
		}

		if instance_exists(Decoy)//CHICKEN VANISH
		{
			instance_create(x+irandom(8)-4,y+irandom(8)-4,Smoke);
		}
		if skill_got[5]==1//THRONEBUTT
		{//Normal movement speed
			//spr_walk = sprMutant9Thronebutt;


			if my_health > 0
			{
			if bskin=1
			spr_walk = sprMutant9BThronebutt;
			else if bskin=2
			spr_walk = sprMutant9CThronebutt;
			else
			spr_walk=sprMutant9Thronebutt;
			}


			if skill_got[2]==1//extra feet
			{
				//normal : 4.5
			maxspeed=5.625//6.3;//6.5// 4.5
			}
			else
			{
				// normal : 4
			maxspeed=5//5.8;//6//normal 4   4*(30/room_speed)
			}
			//friction = 0.45 normal
			//image_speed = 0.4 normal
			image_speed=0.5////0.7;
			friction = 0.5625//0.90;

			if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
			hspeed -= 0.75
			if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
			hspeed += 0.75
			if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
			vspeed -= 0.75
			if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
			vspeed += 0.75
		}
		else
		{
		    if speed>maxspeed-0.5//make chicken a lill slower in slow mo when no thronebutt
		    {
		    speed-=0.5;
		    }
		}


		if !audio_is_playing(sndChickenLoop) {snd_play_2d(sndChickenStart) snd_loop(sndChickenLoop)}

	}

	//STEROIDS
	if race = 7 and bwep != 0
	{
	if ultra_got[27]=0
	scrSwapWeps()
	else{
	twep=bwep;
	bwep=wep;
	scrSwapWeps();
	}
	if ammo[wep_type[wep]] < wep_cost[wep] and KeyCont.key_spec[p] = 1 and wep_type[wep] != 0
	scrEmpty()

		if can_shoot = 1 and ((ammo[wep_type[wep]] >= wep_cost[wep] || wep_type[wep] == 0) and rad>=wep_rad[wep] || alarm[2]>0)
		{
			if wep_auto[wep] = 0 and KeyCont.key_spec[p] = 1
			{
			speed /= 4
			scrFire()
			clicked = 0
			}
			if wep_auto[wep] = 1
				scrFire()
		}
	    scrSwapWeps();
		
		if wep == 0 && bwep != 0
			scrSwapWeps();
	    if ultra_got[27]=1{//mirror hands
	    bwep=twep
	    }
    
    
	}

	//MIND CONTROL
	if race = 3
	{
	if !audio_is_playing(sndEyesLoop) snd_loop(sndEyesLoop)

	if !sound_isplaying(sndEyesLoopUpg) and Player.skill_got[5] =1 snd_loop(sndEyesLoopUpg)

	with enemy
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))}}
	with Sheep
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))}}
	with ExplosiveSheep
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))}}

	with chestprop
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))}}
	with AmmoHPPickup
	{
		if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
		{

		if Player.ultra_got[12]==1{//Ultra D don't care about the walls +increase speed
		x += lengthdir_x(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))//shouldnt it be more efficient
		y += lengthdir_y(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))//if I do this cehck outside of the with
		}
		else{
		if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
		x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
		if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
		y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
		}

		}
	}
	
	with WepPickup
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{

	if Player.ultra_got[12]==1{//Ultra D don't care about the walls
	x += lengthdir_x(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	y += lengthdir_y(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}
	else{
	if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}

	}}

	with Rad
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{

	if Player.ultra_got[12]==1{//Ultra D don't care about the walls
	x += lengthdir_x(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	y += lengthdir_y(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}
	else{
	if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}

	with BigRad
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{

	if Player.ultra_got[12]==1{//Ultra D don't care about the walls
	x += lengthdir_x(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	y += lengthdir_y(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}
	else{
	if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}

	}}

	}}
	with RadChest
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))}}
	with projectile
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) and team != 2 and object_index != EnemyLaser
	{if place_free(x+lengthdir_x(1.2+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180),y)
	x += lengthdir_x(1.2+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180)
	if place_free(x,y+lengthdir_y(1.2+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180))
	y += lengthdir_y(1.2+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180)}}
	
	with PopoNade
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) and team != 2 and object_index != EnemyLaser
	{if place_free(x+lengthdir_x(1.2+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180),y)
	x += lengthdir_x(1.2+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180)
	if place_free(x,y+lengthdir_y(1.2+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180))
	y += lengthdir_y(1.2+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180)}}


	if ultra_got[9]=1{//eyes Projectile Style ULTRA A
	    with projectile
	    if team=other.team && object_index!=Laser && object_index!=MegaLaser
	    {
	    x=Player.x+lengthdir_x(8,point_direction(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y));
	    y=Player.y+lengthdir_y(8,point_direction(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y))
	    }    

	    }
    
	}

	//SHEEP
	if race==13 && instance_exists(SheepStorm) && !ultra_got[49]
	{
		var powerMax = 10 + (ultra_got[51] * 5) + (skill_got[5] * 2);
		if sheepPower<powerMax
		{sheepPower+=0.38;}
		else
		{
			sheepPower = powerMax;
		}
		if (skill_got[5])
		{
			sheepPower += 0.06;
		}
		if (skill_got[2])
		{
			sheepPower += 0.03;	
		}
		if (ultra_got[51])
		{
			sheepPower += 0.09;
		}
		//speed=10;
		var moveBoost = (skill_got[2]*1.4) + (skill_got[5]*1.4) + (ultra_got[5]*2.3);
		//Move in opposite direction to reduce control
		if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
		hspeed += 2.2-moveBoost
		if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
		hspeed -= 2.2-moveBoost
		if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
		vspeed += 2.2-moveBoost
		if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
		vspeed -= 2.2-moveBoost
		motion_add(direction,3.5);
		}
	}//END OF HOLD RMB
	else if audio_is_playing(sndEyesLoop) or audio_is_playing(sndChickenLoop) or audio_is_playing(sndEyesLoopUpg) 
	{
	audio_stop_sound(sndEyesLoop) audio_stop_sound(sndEyesLoopUpg) audio_stop_sound(sndChickenLoop)

	if race = 9 //CHICKEN reset time
	{
	room_speed=30;

	with Decoy//CHICKEN VANISH
	{instance_destroy();}

	if my_health > 0
	{
	if bskin=1
	spr_walk = sprMutant9BWalk;
	else if bskin=2
	spr_walk = sprMutant9CWalk;
	else
	spr_walk = sprMutant9Walk;
	}
	if skill_got[5]//THRONEBUTT
	{
	        if skill_got[2]==1//extra feet
	        {
	        maxspeed = 4.5;
	        }
	        else
	        {
	        maxspeed = 4.0;
	        }
	        friction = 0.45
	        image_speed = 0.4
	}
	}

	}
	else if audio_is_playing(sndFrogLoop) || audio_is_playing(sndFrogLoopButt)
	{//FROG
	audio_stop_sound(sndFrogLoop) 
	audio_stop_sound(sndFrogLoopButt)

	if skill_got[5]=1
	{
	snd_play_2d(sndFrogEndButt);
	snd_play_2d(sndFrogGasReleaseButt);
	}
	else
	{
	snd_play_2d(sndFrogEnd);
	snd_play_2d(sndFrogGasRelease);
	}

	}
	else if ultra_got[10]=1{

	//Eyes Monster style Ultra B
	with enemy
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) and team != 2 and object_index != EnemyLaser
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)+180),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)+180)
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)+180))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)+180)}}


	}
	else if KeyCont.key_spec[p] != 1 and KeyCont.key_spec[p] != 2
	{
	if race = 20 
	{
	with ShopWheel
	alarm[0]=1;

	with ShopAmmo
	alarm[0]=1;
	}
	else if race==21 
	{
	audio_stop_sound(sndHorrorLoopTB);
	audio_stop_sound(sndHorrorLoop);
	horrorcharge=origincharge;
	}
	else if race==22 //rogue
	{
		with PortalStrike
		{
		    if alarm[0]<0
		    {
			if other.skill_got[5]
				snd_play_2d(sndPortalStrikeFireTB);
			else
				snd_play_2d(sndPortalStrikeFire);
	    
			ammo=5;
		    time=2;
		    dir =point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
    
		    if other.skill_got[5]
		    {
		    ammo=14;
		    exploPos=-96;
		    alarm[1]=1;
		    }
    
		    event_perform(ev_alarm,0)
    
    
		    }
		}
	}
	else if race == 23//FROG
	{

	if ultra_got[90]//intimacy
	toxicamount++

	repeat(toxicamount)
	{

		with instance_create(x,y,ToxicThrowerGas)
		{
			motion_add(random(360),1.3+random(2)+(other.skill_got[5]*2));
			dmg += 1;
		}
	}

	toxicamount=0;

	}
	else if ultra_got[19]//Plant Sprint
	{

	if skill_got[2]==1//extra feet
	{
		maxspeed=5;
	}
	else
	{
		maxspeed=4.5;
	}

	image_speed=0.4;

	}
	else if race==13 
	{
	if KeyCont.key_spec[p] != 1 && KeyCont.key_spec[p] != 2 || !instance_exists(SheepStorm)//Sheep reset speed
	{
	with SheepStorm
	instance_destroy();


	sheepPower=0;
	if skill_got[2]==1//extra feet
	{
	maxspeed=4.5;
	}
	else
	{
	maxspeed=4;
	}
	}
	}
	else if race == 24 && KeyCont.key_spec[p] != 1 && KeyCont.key_spec[p] != 2
	{
		lockoutElementor = false;	
	}
	}
}
