/// @description Wallbreak
if place_meeting(x,y,CrownVaultExit)
{
	x -= 32;
}
if place_meeting(x,y,CrownVaultSecretExit)
{
	x -= 32;
}
if place_meeting(x,y,CourtyardEntrance)
{
	x -= 32;
}
if place_meeting(x,y,ProtoChest)
{
	y -= 16;
}
instance_create(x,y,WallBreak);
