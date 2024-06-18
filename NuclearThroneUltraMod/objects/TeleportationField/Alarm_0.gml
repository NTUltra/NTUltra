/// @description Collision
alarm[0] = 1;
var otherTeleport = noone;
with TeleportationField
{
	if id != other.id
	{
		otherTeleport = id;
	}
}
if otherTeleport == noone
	exit;
var movedEntities = myMovedEntities;
with TeleportationField
{
	if id != other.id
	{
		movedEntities = teleportMyEntities(range, other.id, movedEntities);
	}
	else
	{
		movedEntities = teleportMyEntities(range, otherTeleport, movedEntities);
	}
}
myMovedEntities = movedEntities;