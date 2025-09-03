/// @description Give a sprite

// Inherit the parent event
event_inherited();
spawnLocationY = y - 32;
spr_item = sprVoidItemProtoChest;
name = "PROTO CHEST";
cost = 4;
if instance_exists(Player) && Player.skill_got[23] //Open mind
	cost -= 1;
wep = [];
wep[0] = UberCont.protowep;
if wep[0] == 0
{
	wep[0] = 56;
}