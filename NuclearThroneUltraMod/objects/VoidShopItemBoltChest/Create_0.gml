/// @description Give a sprite

// Inherit the parent event
event_inherited();
spr_item = sprVoidItemBoltChest;
name = "BOLT WEAPON CHEST";
wep = [];
//BOLT SPECIFIC
scrWeapons();
for (var wi = 0; wi < maxwep; wi++) {
	if wep_type[wi] != 3 && !scrIsAlsoBoltType(wi)
	{
		wep_area[wi] = -1;
	}
}
event_user(2);