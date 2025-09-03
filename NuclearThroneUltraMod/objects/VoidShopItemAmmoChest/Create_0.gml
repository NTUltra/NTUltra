/// @description Give a sprite

// Inherit the parent event
event_inherited();
spawnLocationY = y - 32;
spr_item = sprVoidItemAmmoChests;
name = "TWO AMMO CHESTS";
cost = 3;
if instance_exists(Player) && Player.skill_got[23] //Open mind
	cost -= 1;