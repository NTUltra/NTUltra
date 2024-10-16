/// @description Give a sprite

// Inherit the parent event
event_inherited();
spr_item = sprVoidItemUltraWeaponChest;
name = "ULTRA WEAPONS CHEST";
cost = 25;
if GetPlayerLoops() > 0
	cost = 17;
spawnLocationY = y - 16;
wep = [];
scrWeapons();
event_user(2);