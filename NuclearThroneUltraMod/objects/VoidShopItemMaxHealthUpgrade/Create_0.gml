/// @description Give a sprite

// Inherit the parent event
event_inherited();
spawnLocationY = y - 32;
spr_item = sprVoidItemMaxHealthUpgrade;
name = "+1 MAX HP";
cost = UberCont.voidShopHealthUpgrade;
if UberCont.voidShopHealthTracker > 0
	cost = 5;
if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//LIVING ARMOUR
{
	spr_item = sprVoidItemMaxArmourUpgrade;
	name = "+1 MAX ARMOUR";
}