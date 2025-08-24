/// @description Move chests
with WeaponChest
{
	if !other.myWeaponChest
	{
		debug("MOVE WEAPON CHEST");
		other.myWeaponChest = true;
		x = other.x  + 8;
		y = other.y + 8;
		scrForcePosition60fps();
	}
}
with AmmoChest
{
	if !other.myAmmoChest
	{
		other.myAmmoChest = true;
		x = other.x  + 8;
		y = other.y + 16;
		scrForcePosition60fps();
	}
}
with RadChest
{
	if !other.myRadiationChest
	{
		other.myRadiationChest = true;
		x = other.x  + 24;
		y = other.y + 24;
		scrForcePosition60fps();
	}
}
with RogueAmmoChest
{
	if !other.myRoguePortalStrikeChest
	{
		other.myRoguePortalStrikeChest = true;
		x = other.x  + 24;
		y = other.y + 8;
		scrForcePosition60fps();
	}
}