/// @description Give a sprite

// Inherit the parent event
event_inherited();
spawnLocationY = y - 32;
spr_item = sprVoidItemMutationUpgrade;
name = "+1 MUTATION";
cost = UberCont.voidShopMutationUpgrade;
if UberCont.voidShopMutationTracker > 0
	cost = 10;