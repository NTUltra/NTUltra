/// @description Give a sprite

// Inherit the parent event
event_inherited();
spr_item = sprVoidItemMeleeChest;
name = "MELEE WEAPON CHEST";
spawnLocationY = y - 32;
wep = [];
scrWeapons();
wep_target = [];
for (var wi = 0; wi < maxwep; wi++) {
	if !scrMeleeWeapons(wi)
	{
		wep_area[wi] = -1;
	}
}
event_user(2);