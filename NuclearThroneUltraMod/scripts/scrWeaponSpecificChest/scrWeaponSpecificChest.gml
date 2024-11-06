///scrWeaponSpecificChest();
// /@description
///@param
function scrWeaponSpecificChest(){
	SetSeedWeapon();
	ammoGet = 0;
	curse = 0
	heavyHeart = false;
	wep_target = [];
	var new_wep_name = [];
	var new_wep_type = [];
	var new_wep_auto = [];
	var new_wep_load = [];
	var new_wep_cost = [];
	var new_wep_sprt = [];
	var new_wep_area = [];
	var new_wep_text = [];
	var new_wep_swap = [];
	var new_wep_rad = [];
	var new_wep_popup = [];
	var j = 0;
	for (var wi = 0; wi < maxwep; wi++) {
		if wep_area[wi] > -1
		{
			wep_target[j] = wi;
			new_wep_name[j] = wep_name[wi];
			new_wep_type[j] = wep_type[wi];
			new_wep_auto[j] = wep_auto[wi];
			new_wep_load[j] = wep_load[wi];
			new_wep_cost[j] = wep_cost[wi];
			new_wep_sprt[j] = wep_sprt[wi];
			new_wep_area[j] = wep_area[wi];
			new_wep_text[j] = wep_text[wi];
			new_wep_swap[j] = wep_swap[wi];
			new_wep_rad[j] = wep_rad[wi];
			new_wep_popup[j] = wep_popup[wi];
			j += 1;
		}
	}
	wep_name = [];
	wep_type = [];
	wep_auto = [];
	wep_load = [];
	wep_cost = [];
	wep_sprt = [];
	wep_area = [];
	wep_text = [];
	wep_swap = [];
	wep_rad = [];
	wep_popup = [];
	array_copy(wep_name,0,new_wep_name,0,array_length(new_wep_name));
	array_copy(wep_type,0,new_wep_type,0,array_length(new_wep_type));
	array_copy(wep_auto,0,new_wep_auto,0,array_length(new_wep_auto));
	array_copy(wep_load,0,new_wep_load,0,array_length(new_wep_load));
	array_copy(wep_cost,0,new_wep_cost,0,array_length(new_wep_cost));
	array_copy(wep_sprt,0,new_wep_sprt,0,array_length(new_wep_sprt));
	array_copy(wep_area,0,new_wep_area,0,array_length(new_wep_area));
	array_copy(wep_text,0,new_wep_text,0,array_length(new_wep_text));
	array_copy(wep_swap,0,new_wep_swap,0,array_length(new_wep_swap));
	array_copy(wep_rad,0,new_wep_rad,0,array_length(new_wep_rad));
	array_copy(wep_popup,0,new_wep_popup,0,array_length(new_wep_popup));
	maxwep = array_length(wep_name) - 1;
	var repeats = 2;
	if instance_exists(Player) 
	{
		if Player.skill_got[23]//Open mind
			repeats += 1;
		if Player.skill_got[0]
			heavyHeart = true;
	}
	if heavyHeart
		repeats += 1;
	var j = 0;
	var wantWep = [];
	repeat(repeats)
	{
		var tries = 2000;
		var newWep = 0;
		do {
			tries -= 1;
			newWep = scrDecideWep(1,40,0,0,true);
		} until (tries < 0 || !array_contains(wantWep, newWep));
		if newWep != 0
		{
			wantWep[j] = newWep;
			j += 1;
		}
	}
	wep = wantWep;
	SetSeed();
}