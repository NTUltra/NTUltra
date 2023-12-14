///scrCollectAmmo();
// /@description
///@param
function scrCollectAmmo(gain_multiplier = 1, isCursed = false, isSuperCursed = false) {
	var type = 0;
	with Player
	{
		var pt = wep_type[wep];//primary ammo type
		var st = wep_type[bwep];//secondary ammo type
		var pa = ammo[pt];//primary ammo
		var sa = ammo[st];//secondary ammo
		var pc = wep_cost[wep];
		var sc = wep_cost[bwep];
		var pam = typ_amax[pt];//primary max ammo
		var sam = typ_amax[st]//secondary max ammo
		if pt == 0
			pa = pam;
		if st == 0
			sa = sam;
		
	}
	if Player.skill_got[36]
	{
		speed = 6;
		scrRaddrop(choose(2,3,3));
	}
	var randomAmmo = true;

	if (pa < pc && pt != 0 && (Player.bwep == 0 || st == 0
		|| (sa < sc)))
	{
		//Primary is empty & secondary is also empty or uses no ammo
		type = pt;
		randomAmmo = false;
	}
	else if (sa < sc && st != 0 && ((pt == 0)
		|| (pa < pc)))
	{
		//Secondary is empty & primary is also empty or uses no ammo
		type = st;
		randomAmmo = false
	}
	if randomAmmo 
	{
		var ran = random(7);
		if ran > 6
		{
			//Make sure there is enough ammo to fire either gun
			if (sa < sc)
			{
				type = st;
			}
			if (pa < pc)
			{
				type = pt;
			}
		}
		else if (pa == pam or sa == sam && ran < 3)
		{
			if ran < 2
			{
				//Chance to top up weapon that is not full
				if (pa >= pam) && sa < sam
					type = st;
				else if (pa < pam) && sa == sam
					type = pt;
				else
					type = choose(1,2,3,4,5);
			}
			else
			{
				type = choose(1,2,3,4,5)
			}
		}
		else if Player.bwep != 0
		{
			//Chance to give ammo which you need most
			if ran > 4
			{
				var pap = pa/pam;//primary ammo percentage
				var sap = sa/sam;//secondary ammo percentage
				if pap < sap && pt != 0
				{
					type = pt;	
				}
				else
				{
					type = st;	
				}
			}
			else
			{
				if pt == st && ran > 5.5//Ammo type is the same very slim chance to get completly random ammo
					type = 0;
				else
					type = choose(pt,st);
			}
		}
		else {
			//Single handed
			if ran > 3
			{
				type = pt
			}
			else
			{
				type = choose(pt,st);
			}
		}
	}

	//Roids get loaded ultra
	//if ( Player.ultra_got[26] && Player.wep!=0 )
	//type = pt;

	if type == 0 || Player.ammo[type] > Player.typ_amax[type]
		type = choose(1,2,3,4,5);

	extra = 0
	//RUSH CROWN
	if scrIsCrown(4)
	extra = 1
	if Player.race == 12 && Player.skill_got[5]=0//Yung Cuz Passive
		extra+=Player.typ_ammo[type]*(instance_number(YungCuzDupe)*0.5);
	if Player.race == 12 && Player.skill_got[5]=1//Yung Cuz Thronebutt
		extra+=Player.typ_ammo[type]*(instance_number(YungCuzDupe));

	if scrIsGamemode(9) //Casual mode
		extra +=1;

	if isCursed
		gain_multiplier += 0.5
	if isSuperCursed
		gain_multiplier += 0.5

	Player.ammo[type] += floor((Player.typ_ammo[type]+extra) * gain_multiplier)

	if Player.ammo[type] > Player.typ_amax[type] && !Player.ultra_got[26]
		Player.ammo[type] = Player.typ_amax[type]

	if (UberCont.opt_ammoicon)
	{
		dir = instance_create(x,y,PopupText)
		dir.sprt = sprAmmoIconsPickup
		dir.ii = type-1;
		dir.mytext = "+"+string(floor((Player.typ_ammo[type]+extra) * gain_multiplier))//+string(Player.typ_name[type])
		if Player.ammo[type] == Player.typ_amax[type]
			dir.mytext = "MAX"//+string(Player.typ_name[type])
	
		snd_play(sndAmmoPickup)
	}
	else
	{
		dir = instance_create(x,y,PopupText)
		dir.mytext = "+"+string(floor((Player.typ_ammo[type]+extra) * gain_multiplier))+" "+string(Player.typ_name[type])
		if Player.ammo[type] == Player.typ_amax[type]
			dir.mytext = "MAX "+string(Player.typ_name[type])

		snd_play(sndAmmoPickup)
	}

}