/// @description Give a sprite

// Inherit the parent event
event_inherited();
spr_item = sprVoidItemEnergyChest;
name = "ENERGY WEAPON CHEST";
wep = [];
scrWeapons();
for (var wi = 0; wi < maxwep; wi++) {
	if wep_type[wi] != 5 && !scrIsAlsoEnergyType(wi)
	{
		wep_area[wi] = -1;
	}
}
event_user(2);