/// @description Give a sprite

// Inherit the parent event
event_inherited();
spawnLocationY = y - 32;
spr_item = sprVoidItemRegalRefund;
name = "REFUND REGAL VISIONS";
cost = 1;
if instance_exists(Player) && Player.getVision
{
	event_user(1);
	if UberCont.extraVan > -2
		instance_create(x,y,VoidShopItemReduceIdpdVans);
}