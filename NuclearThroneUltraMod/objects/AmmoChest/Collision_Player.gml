if !instance_exists(GenCont)
{
if mediumchest==0{
	if other.wep_type[other.wep] == 0 or other.ammo[other.wep_type[other.wep]] >= other.typ_amax[other.wep_type[other.wep]]
	{
		if other.bwep != 0 && other.wep_type[other.bwep] != 0 and other.ammo[other.wep_type[other.bwep]] < other.typ_amax[other.wep_type[other.bwep]]
		{
			type = other.wep_type[other.bwep]
		}
		else
		{
			if other.cwep != 0 && other.wep_type[other.cwep] != 0  and other.ammo[other.wep_type[other.cwep]] < other.typ_amax[other.wep_type[other.cwep]]
			{
				type = other.wep_type[other.cwep]
			}
			else
			{
				type = choose(1,2,3,4,5)
			}
		}
	}
	else
		type = other.wep_type[other.wep]
	
	var t = type;
	scrChestOpenMindReload(other);
	with other
	{
		ammo[t] += typ_ammo[t]*other.ammoValue
		var amount = typ_ammo[t]*other.ammoValue;
		var excess = ammo[t] - typ_amax[t];
		if ammo[t] > typ_amax[t]
			ammo[t] = typ_amax[t];
		if amount - max(0,excess) > 0
			scrAmmoPickupText(t, amount - max(0,excess));
		
		if excess > 0 && bwep != 0 && wep_type[bwep] != 0
		{
			var excessPercentage = excess / typ_amax[t];
			t = wep_type[bwep];
			var amount = typ_amax[t] * excessPercentage;
			ammo[t] += amount;
			excess = ammo[t] - typ_amax[t];
			if ammo[t] > typ_amax[t]
				ammo[t] = typ_amax[t];
			if amount - max(0,excess) > 0
				scrAmmoPickupText(t, amount - max(0,excess));
			if excess > 0 && cwep != 0  && wep_type[cwep] != 0
			{
				excessPercentage = excess / typ_amax[t];
				t = wep_type[cwep];
				amount = typ_amax[t] * excessPercentage;
				ammo[t] += amount
				excess = ammo[t] - typ_amax[t];
				if ammo[t] > typ_amax[t]
					ammo[t] = typ_amax[t];
				if amount - max(0,excess) > 0
					scrAmmoPickupText(t, amount - max(0,excess));
			}
		}
		if excess > 0
		{
			var excessPercentage = excess / typ_amax[t];
			t = irandom_range(1,5);
			var tadd = irandom_range(1,4);
			//Spread out the remaining ammo
			var done = false;
			repeat(4)
			{
				if !done
				{
					var amount = typ_amax[t] * excessPercentage;
					ammo[t] += amount;
					excess = ammo[t] - typ_amax[t];
					if ammo[t] > typ_amax[t]
						ammo[t] = typ_amax[t];
					if excess > 0
					{
						if amount - max(0,excess) > 0
							scrAmmoPickupText(t, amount - max(0,excess));
						excessPercentage = excess / typ_amax[t];
						repeat(tadd)
						{
							t++
							if t > 5
								t = 1;
						}
					}
					else
					{
						done = true;
						if amount - max(0,excess) > 0
							scrAmmoPickupText(t, amount - max(0,excess));
					}
				}
			}
		}
	}
}
else{//ROIDS ULTRA B
var i;
i=0;
	repeat(5)
	{
		i+=1;

		type = i;

		other.ammo[type] += other.typ_ammo[type]*ammoValue
		if other.ammo[type] > other.typ_amax[type] && !Player.ultra_got[26]
			other.ammo[type] = other.typ_amax[type]

		if (UberCont.opt_ammoicon)
		{
			dir = instance_create(x,y,PopupText)
			dir.sprt = sprAmmoIconsPickup
			dir.ii = type-1;
			dir.mytext = "+"+string(other.typ_ammo[type]*2);
			if other.ammo[type] == other.typ_amax[type]
				dir.mytext = "MAX";
		}
		else
		{
			dir = instance_create(x,y,PopupText)
			dir.mytext = "+"+string(other.typ_ammo[type]*2)+" "+string(other.typ_name[type])
			if other.ammo[type] == other.typ_amax[type]
				dir.mytext = "MAX "+string(other.typ_name[type])
		}
	}
}
snd_play(sndAmmoChest)
instance_destroy()
}


/*
ang = random(360)
repeat(20)
{
with instance_create(x,y,Bullet1)
{motion_add(other.ang,12+random(4))
image_angle = direction
team =2}
ang += 18
}*/

/* */
/*  */
