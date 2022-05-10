/// @description COMBINE
with Player
{
	if bwep!=0
	{
	    //var upgradechance = wep_area[wep]-wep_area[bwep];
	    if string_copy(wep_name[wep],0,4) = "GOLD" && string_copy(wep_name[bwep],0,4) = "GOLD"
	    scrUnlockBSkin(17,"FOR COMBINING TWO GOLDEN WEAPONS",0);
    
	    //handling golden weapons
	    if string_copy(wep_name[wep],0,4) = "GOLD"&&loops<1
	    wep=9//minigun tier 6
	    if string_copy(wep_name[bwep],0,4) = "GOLD"&&loops<1
	    bwep=9//minigun tier 6
    
	    //GO through array and check if there is a weapon of a higher  tier first
	    highesttier = max(wep_area[wep],wep_area[bwep]);
    
	    if highesttier=-1
	    highesttier=irandom(4);
			highesttier = min(highesttier,highest_wep_tier-2);//Cap it
	        var dir=0;
			var targetTier = highesttier+1+skill_got[5];
	        var newwep = wep;
	            do
	            {
						newwep=round(random(maxwep-1)+1);
						dir++
		            if dir>4999
						newwep=wep;
	            }
	            until(  (wep_area[newwep]==(targetTier) )|| ( ( wep_area[newwep]==highesttier || ( wep_area[newwep] > highesttier && wep_area[newwep] < targetTier ) )&&dir>3000 ) || ( dir>5000 ) )//PREVENT INFINITE LOOP HERE IF YOU HAVE HIGHEST TIER WEAPON
            
	            //wep=0;
	            //scrSwapWeps()
	            if bcurse=1
	            curse=1;
	            bwep = 0
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
	    if ultra_got[66]
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
