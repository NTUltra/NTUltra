/// @description Give a sprite

// Inherit the parent event
event_inherited();
spr_item = sprVoidItemMeleeChest;
name = "MELEE WEAPON CHEST";
cost = 5;
spawnLocationY = y - 32;
wep = [];
scrWeapons();
for (var wi = 0; wi < maxwep; wi++) {
	if wep_type[wi] != 3 && !scrIsAlsoBoltType(wi)
	{
		wep_area[wi] = -1;
	}
}
event_user(2);