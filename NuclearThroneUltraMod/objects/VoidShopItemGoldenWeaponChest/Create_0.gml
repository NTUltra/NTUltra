/// @description Give a sprite

// Inherit the parent event
event_inherited();

spr_item = sprVoidItemGoldChest;
name = "GOLDEN WEAPON CHEST";
cost = 3;
if instance_exists(Player) && Player.skill_got[23] //Open mind
	cost -= 1;
spawnLocationX -= 16;
spawnLocationY += 8;