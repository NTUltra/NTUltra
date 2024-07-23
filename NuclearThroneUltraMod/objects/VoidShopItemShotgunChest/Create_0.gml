/// @description Give a sprite

// Inherit the parent event
event_inherited();
spr_item = sprVoidItemShotgunChest;
name = "SHOTGUN WEAPON CHEST";
cost = 5;
wep = [];
scrWeapons();
for (var wi = 0; wi < maxwep; wi++) {
	if wep_type[wi] != 2 && !scrIsAlsoShotgun(wi)
	{
		wep_area[wi] = -1;
	}
}
event_user(2);