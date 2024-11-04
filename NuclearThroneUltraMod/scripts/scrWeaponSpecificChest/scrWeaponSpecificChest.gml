///scrWeaponSpecificChest();
// /@description
///@param
function scrWeaponSpecificChest(){
	SetSeedWeapon();
	ammoGet = 0;
	curse = 0
	heavyHeart = false;
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
		if wep_area[wi] < 0
		{
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

	wep_name = new_wep_name;
	wep_type = new_wep_type;
	wep_auto = new_wep_auto;
	wep_load = new_wep_load;
	wep_cost = new_wep_cost;
	wep_sprt = new_wep_sprt;
	wep_area = new_wep_area;
	wep_text = new_wep_text;
	wep_swap = new_wep_swap;
	wep_rad = new_wep_rad;
	wep_popup = new_wep_popup;
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