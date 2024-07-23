/// @description Give a sprite

// Inherit the parent event
event_inherited();
spr_item = sprVoidItemBulletChest;
name = "BULLET WEAPON CHEST";
cost = 5;
spawnLocationY = y - 32;
wep = [];
scrWeapons();
for (var wi = 0; wi < maxwep; wi++) {
	if wep_type[wi] != 1 && !scrIsAlsoBulletType(wi)
	{
		wep_area[wi] = -1;
	}
}
event_user(2);