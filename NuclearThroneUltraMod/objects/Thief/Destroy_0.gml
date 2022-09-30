scrDrop(20,0)

event_inherited()


if wep!=0
{//give back weapon


    with instance_create(x,y,WepPickup)
    {
	    depth=-9;
	    image_angle=random(360);
	    scrWeapons()
	    oneweponly=false;//drop it in one wep only gmode
	    wep=other.wep
	    name = wep_name[wep]
	    ammo = 0
	    type = wep_type[wep]
	    curse = other.curse
	    wepmod1=other.wepmod1;
	    wepmod2=other.wepmod2;
	    wepmod3=other.wepmod3;
		wepmod4=other.wepmod4;
	    sprite_index = wep_sprt[wep]   
    }
}

//GAMEMODE UNLOCKABLE NO HUD MODE
scrUnlockGameMode(3,"FOR KILLING A THIEF");


