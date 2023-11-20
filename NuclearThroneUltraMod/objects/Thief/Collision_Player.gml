/// @description steal shit
if stolen<1
{
with other
{
	var contactDmg = 0;
	if skill_got[8]
	{
		if race==25
			contactDmg = 8//dmg dealt by gamma guts
		else
			contactDmg = 7//dmg dealt by gamma guts
			
	}
	if race == 15 //Atom
	{
		contactDmg += 2;
		if ultra_got[58]
			contactDmg += 6;
	}
	if contactDmg > other.my_health
		exit;

//0 = melee 1 = bullets 2 = shells 3 = bolts 4 = explosives 5 = energy
//typ_ammo[0] = 333 typ_ammo[1] = 32 typ_ammo[2] = 8 typ_ammo[3] = 8 typ_ammo[4] = 6 typ_ammo[5] = 10

	if (loops>0 || other.isInverted)&&random(3)<other.stealWeaponOdds
	{
		if cwep!=0 && other.wep == 0
		{
		    //save weapon here
		    //stolen weapon data
		    other.wep=cwep;
		    other.wepmod1=cwepmod1;
		    other.wepmod2=cwepmod2;
		    other.wepmod3=cwepmod3;
			other.wepmod4=cwepmod4;
		    other.curse=ccurse;
			other.isPermanent=isPermanentC;
			other.hasBeenEaten=hasBeenEatenC;
		    dir= instance_create(x,y-8,PopupText)
			dir.theColour = c_red;
		    dir.mytext = "WEAPON STOLEN!";
			Sleep(100);
			with Player {
				snd_play(choose(snd_lowa,snd_lowh));	
			}
		    cwep=0;
		}
		else if bwep!=0 && other.wep == 0
		{
		    //save weapon here
		    //stolen weapon data
		    other.wep=bwep;
		    other.wepmod1=bwepmod1;
		    other.wepmod2=bwepmod2;
		    other.wepmod3=bwepmod3;
			other.wepmod4=bwepmod4;
		    other.curse=bcurse;
			other.isPermanent=isPermanentB;
			other.hasBeenEaten=hasBeenEatenB;
    
		    dir= instance_create(x,y-8,PopupText)
		    dir.mytext = "WEAPON STOLEN!";
			dir.theColour=c_red;
			Sleep(100);
			with Player {
				snd_play(choose(snd_lowa,snd_lowh));	
			}
			if ultra_got[29] && altUltra//ROBOT EXCLUSIVE TASTE
			{
				maxhealth += 4;
			}
		    bwep = 0;
		}

	}

    if ( ( ammo[wep_type[wep]]-other.typ_ammo[wep_type[wep]]*other.stealAmount ) && wep_type[wep]!=0 )
    {
	    ammo[wep_type[wep]]-=other.typ_ammo[wep_type[wep]]*other.stealAmount;
        if (UberCont.opt_ammoicon)
		{
			dir = instance_create(x,y,PopupText);
			dir.sprt = sprAmmoIconsPickup
			dir.ii = wep_type[wep]-1;
		    dir.mytext = "-"+string(other.typ_ammo[wep_type[wep]]*other.stealAmount)
		    dir.theColour=c_red;
		}
		else
		{
		    dir = instance_create(x,y,PopupText)
		    dir.mytext = "-"+string(other.typ_ammo[wep_type[wep]]*other.stealAmount)+" "+string(typ_name[wep_type[wep]])
		    dir.theColour=c_red;
		}
    }
	else if cwep!=0 && other.wep == 0
    {
	    if ( (ammo[wep_type[cwep]]-other.typ_ammo[wep_type[cwep]]*other.stealAmount) && wep_type[cwep]!=0   )
	    {
	    ammo[wep_type[cwep]]-=other.typ_ammo[wep_type[cwep]]*other.stealAmount;
		if (UberCont.opt_ammoicon)
		{
			dir = instance_create(x,y,PopupText);
			dir.sprt = sprAmmoIconsPickup
			dir.ii = wep_type[cwep]-1;
		    dir.mytext = "-"+string(other.typ_ammo[wep_type[cwep]]*other.stealAmount)
		    dir.theColour=c_red;
		}
		else
		{
		    dir= instance_create(x,y,PopupText)
		    dir.mytext = "-"+string(other.typ_ammo[wep_type[cwep]]*other.stealAmount)+" "+string(typ_name[wep_type[cwep]])   
		    dir.theColour=c_red;
		}
	    }
	    else
	    {
	    //save weapon here
	    //stolen weapon data
	    other.wep=cwep;
	    other.wepmod1=cwepmod1;
	    other.wepmod2=cwepmod2;
	    other.wepmod3=cwepmod3;
		other.wepmod4=cwepmod4;
	    other.curse=ccurse;
		other.isPermanent=isPermanentC;
		other.hasBeenEaten = hasBeenEatenC;
	    dir= instance_create(x,y,PopupText)
	    dir.mytext = "WEAPON STOLEN!"
	    dir.theColour=c_red;
		Sleep(100);
		with Player {
			snd_play(choose(snd_lowa,snd_lowh));	
		}
	    cwep=0;
	    }
    }
    else if bwep!=0 && other.wep == 0
    {
	    if ( (ammo[wep_type[bwep]]-other.typ_ammo[wep_type[bwep]]*other.stealAmount) && wep_type[bwep]!=0   )
	    {
			ammo[wep_type[bwep]]-=other.typ_ammo[wep_type[bwep]]*other.stealAmount;
			if (UberCont.opt_ammoicon)
			{
				dir = instance_create(x,y,PopupText);
				dir.sprt = sprAmmoIconsPickup
				dir.ii = wep_type[bwep]-1;
			    dir.mytext = "-"+string(other.typ_ammo[wep_type[bwep]]*other.stealAmount)
			    dir.theColour=c_red;
			}
			else
			{
			    dir= instance_create(x,y,PopupText)
			    dir.mytext = "-"+string(other.typ_ammo[wep_type[bwep]]*other.stealAmount)+" "+string(typ_name[wep_type[bwep]])   
			    dir.theColour=c_red;
			}
	    }
	    else
	    {
	    //save weapon here
	    //stolen weapon data
	    other.wep=bwep;
	    other.wepmod1=bwepmod1;
	    other.wepmod2=bwepmod2;
	    other.wepmod3=bwepmod3;
	    other.curse=bcurse;
		other.isPermanent=isPermanentB;
		other.hasBeenEaten = hasBeenEatenB;
		
	    dir= instance_create(x,y,PopupText)
	    dir.mytext = "WEAPON STOLEN!"
	    dir.theColour=c_red;
		Sleep(100);
		with Player {
			snd_play(choose(snd_lowa,snd_lowh));	
		}
		if ultra_got[29] && altUltra//ROBOT EXCLUSIVE TASTE
		{
			maxhealth += 4;
		}
	    bwep = 0;
	    }
    }
}
stolen=4;
alarm[1]=1;
}



