/// @description COMBINE
with Player
{
	with UberCont {
		if useSeed {
			random_set_seed(seed + seedWeaponSmith);
			seedWeaponSmith += 1414;
		}
	}
	if bwep!=0
	{
		if instance_exists(HammerThrow)
		{
			with HammerThrow
			{
				if (canDealDamage == 1 || canDealDamage == 0) && alarm[2] < 1
				{
					snd_play_fire(choose(sndKunai1,sndKunai2));
					event_user(2);
				}
			}
		}
	    //var upgradechance = wep_area[wep]-wep_area[bwep];
	    if scrCheckGold(wep_name[wep]) && scrCheckGold(wep_name[bwep])
	    scrUnlockBSkin(17,"FOR COMBINING TWO GOLDEN WEAPONS",0);
    
	    //handling golden weapons
	    if scrCheckGold(wep_name[wep])
	    wep=20//laser rifle is tier 5
	    if scrCheckGold(wep_name[bwep])
	    bwep=20//laser rifle is tier 5
    
	    //GO through array and check if there is a weapon of a higher tier first
	    highesttier = max(wep_area[wep],wep_area[bwep]);
    
	    if highesttier = -1
			highesttier = irandom(4);
			var dir=0;
			var highestPossible = 12;
			highesttier = min(highesttier,highest_wep_tier-2);//Cap it
			var targetTier = highesttier;
			if (skill_got[5])
			{
				if targetTier < irandom_range(19,24)
				{
					targetTier = targetTier + 1;
				}
			}
			else
			{
				if targetTier < 13
				{
					targetTier = targetTier + choose(1,0)
				}
			}
	        var newwep = wep;
	            do
	            {
						newwep=round(random(maxwep-1)+1);
						dir++
		            if dir>4999
						newwep=wep;
	            }
	            until(  (wep_area[newwep]==(targetTier) && wep != newwep)|| ( ( wep_area[newwep]==highesttier || ( wep_area[newwep] > highesttier && wep_area[newwep] < targetTier ) )&&dir>3000 ) || ( dir>5000 ) )//PREVENT INFINITE LOOP HERE IF YOU HAVE HIGHEST TIER WEAPON
            
	            //wep=0;
	            //scrSwapWeps()
	            if bcurse=1
		            curse=1;
		        bwep = 0
				if wepmod1 == 0
				{
					wepmod1 = bwepmod1;
					wepmod2 = bwepmod2;
					wepmod3 = bwepmod3;
					if skill_got[30]
						wepmod4 = bwepmod4;
					
				}
				else if wepmod2 == 0
				{
					wepmod2 = bwepmod1;
					wepmod3 = bwepmod2;
					if skill_got[30]
						wepmod4 = bwepmod3;
				}
				else if wepmod3 == 0
				{
					wepmod3 = bwepmod1;
					if skill_got[30]
						wepmod4 = bwepmod2;
				}
				else if wepmod4 == 0 && skill_got[30]
				{
					wepmod4 = bwepmod1;
				}
				if skill_got[30] && wepmod4 != 0
				{
					scrUnlockCSkin(17,"FOR ADDING FOUR MODS#TO ONE WEAPON",0);
				}
				bwepmod1 = 0;
				bwepmod2 = 0;
				bwepmod3 = 0;
				bwepmod4 = 0;
		        wep=newwep;
            
	            can_shoot = 1
	            reload = 0
	            scrWeaponHold();
	            instance_create(x,y,UpgradeFX);
            
	            //dont start empty handed
	        if ammo[wep_type[wep]] < typ_ammo[wep_type[wep]]*3
	        {ammo[wep_type[wep]]+=typ_ammo[wep_type[wep]]*3;}
        
	        if ammo[wep_type[bwep]] < typ_ammo[wep_type[bwep]]*3
	        {ammo[wep_type[bwep]]+=typ_ammo[wep_type[bwep]]*3;}
        
	            //snd_play_2d(sndHitMetal);
	        //}
	    if ultra_got[66] && !altUltra
			armour+=2;
		
		//Add a mod to it
		if ultra_got[65]
		{
			var m = scrMods();
			if (wepmod1 == 0)
			{wepmod1=m;}
			else if (wepmod2 == 0)
			{wepmod2=m;}
			else if (wepmod3 == 0)
			{wepmod3=m;}
			else if (wepmod4 == 0 && skill_got[30])
			{wepmod4=m;}
		}
    
	    dir = instance_create(x,y,PopupText)
	    dir.mytext = string(wep_name[wep])+"!"
		
		//UNLOCK GOLDEN WEAPON
		if scrCheckGold(wep_name[wep])
		{
			scrUnlockGoldWeapon(wep);
		}
	}
}
instance_destroy();
