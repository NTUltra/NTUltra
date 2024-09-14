///scrLuckyShot();
// /@description
///@param
function scrLuckyShot(){
	var chance = 2;
	var ran = 10;
	if Player.race == 25
		chance = 2.6
	if Player.skill_got[6] = 1 and random(ran) < chance//0.214% 0.23%
    {
		var canMeleeAmmo = scrIsCrown(40);
		snd_play_2d(sndLuckyShotProc,0,true);
	    with instance_create(Player.x,Player.y-8,HealFX)
	    {
			sprite_index = sprLuckyShot;
	    }
    
	    var wepammo = Player.wep_type[Player.wep]
	    if Player.bwep!=0
			var bwepammo = Player.wep_type[Player.bwep]
	    else
		{
			if canMeleeAmmo
				var bwepammo=choose(0,1,2,3,4,5);
			else
				var bwepammo=choose(1,2,3,4,5);
		}
		if Player.cwep!=0
			var cwepammo = Player.wep_type[Player.cwep]
	    else
			var cwepammo=choose(wepammo,bwepammo);
    
	    //melee
	    if !canMeleeAmmo && wepammo == 0
			wepammo=choose(1,2,3,4,5);
    
	    if !canMeleeAmmo && bwepammo == 0
			bwepammo=choose(1,2,3,4,5);
	
		if !canMeleeAmmo && cwepammo == 0
			cwepammo=choose(1,2,3,4,5);
		if canMeleeAmmo
			type = choose(0,1,2,3,4,5,
			wepammo,wepammo,wepammo,wepammo,wepammo,
			bwepammo,bwepammo,bwepammo,
			cwepammo,cwepammo,cwepammo)
		else
		    type = choose(1,2,3,4,5,
			wepammo,wepammo,wepammo,wepammo,wepammo,
			bwepammo,bwepammo,bwepammo,
			cwepammo,cwepammo,cwepammo)
		if canMeleeAmmo
		{
			if type == wepammo && scrMeleeWeapons(Player.wep)
				type = choose(type,type,0);
			else if type == bwepammo && scrMeleeWeapons(Player.bwep)
				type = choose(type,type,0);
			else if Player.cwep != 0 && type == cwepammo && scrMeleeWeapons(Player.cwep)
				type = choose(type,type,0);
		}
	    Player.ammo[type] += round(Player.typ_ammo[type]*0.5)
	    if Player.ammo[type] > Player.typ_amax[type] && !Player.ultra_got[26]
			Player.ammo[type] = Player.typ_amax[type]
    
		if (UberCont.opt_ammoicon)
		{
			dir = instance_create(x,y,PopupText);
			dir.sprt = sprAmmoIconsPickup
			dir.ii = type;
		    dir.mytext = "+"+string(round(Player.typ_ammo[type]*0.5));
		    if Player.ammo[type] == Player.typ_amax[type]
				dir.mytext = "MAX";
		}
		else
		{
		    dir = instance_create(x,y,PopupText)
		    dir.mytext = "+"+string(round(Player.typ_ammo[type]/2))+" "+string(Player.typ_name[type])
		    if Player.ammo[type] == Player.typ_amax[type]
				dir.mytext = "MAX "+string(Player.typ_name[type])
		}
    }
}