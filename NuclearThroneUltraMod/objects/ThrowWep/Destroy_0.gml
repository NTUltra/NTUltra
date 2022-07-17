with Player
{

    if wep=0&&other.dontteleport==false
    {
	    wep=other.wep;
	    curse = other.curse
	    wepmod1=other.wepmod1;
	    wepmod2=other.wepmod2;
	    wepmod3=other.wepmod3;
	    wepmod4=other.wepmod4;
		
		if (ultra_got[54] == 1 && wep_type[wep] != 0)
		{
			//dont start empty handed
			if ( ammo[wep_type[wep]] < typ_ammo[wep_type[wep]]*2 )//if ammo below three times an ammo drop
			{ammo[wep_type[wep]]=typ_ammo[wep_type[wep]]*2;}
		}
		
	    //hold it properly now
	    scrWeaponHold();
    
	    exit;
    }
    else if bwep=0 &&other.dontteleport==false
    {
	    bwep=other.wep;
	    bcurse = other.curse
	    bwepmod1=other.wepmod1;
	    bwepmod2=other.wepmod2;
	    bwepmod3=other.wepmod3;
	    bwepmod4=other.wepmod4;
		
		if (ultra_got[54] == 1 && wep_type[bwep] != 0)
		{
			//dont start empty handed
			if ( ammo[wep_type[bwep]] < typ_ammo[wep_type[bwep]]*2 )//if ammo below three times an ammo drop
			{ammo[wep_type[bwep]]=typ_ammo[wep_type[bwep]]*2;}
		}
	    exit;
    }

}
if canHeavyHeart
{
	canHeavyHeart = false;
	 with scrDropHeavyHeart()
	 {
		alarm[0] = 1;	 
	 }
}
with instance_create(x,y,WepPickupForOneWepOnly)
{
	oneweponly=false;
	image_angle=other.image_angle;
	scrWeapons()
	wep=other.wep
	name = wep_name[wep]
	ammo = 0
	type = wep_type[wep]
	curse = other.curse
	wepmod1=other.wepmod1;
	wepmod2=other.wepmod2;
	wepmod3=other.wepmod3;
	wepmod4=other.wepmod4;
	persistent=other.persistent;
	sprite_index = wep_sprt[wep]
}