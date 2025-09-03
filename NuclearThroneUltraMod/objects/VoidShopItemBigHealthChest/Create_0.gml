/// @description Give a sprite

// Inherit the parent event
event_inherited();
spawnLocationY = y - 32;
spr_item = sprVoidItemBigHealthChest;
name = "BIG HEALTH CHEST";
cost = 4;
if instance_exists(Player) && Player.skill_got[23] //Open mind
	cost -= 1;