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
var previousEntities = myMovedEntities;
var everything;
var newHits = [];
with TeleportationField
{
	if id != other.id
	{
		everything = teleportMyEntities(range, other.id, movedEntities);
		movedEntities = array_concat(movedEntities,everything[0]);
		newHits = array_concat(newHits,everything[1]);
	}
	else
	{
		everything = teleportMyEntities(range, otherTeleport, movedEntities);
		movedEntities = array_concat(movedEntities,everything[0]);
		newHits = array_concat(newHits,everything[1]);
	}
}
myMovedEntities = movedEntities;
newCollisions = newHits;
if !array_equals(myMovedEntities,previousEntities) && alarm[1] < 1
{
	alarm[1] = 2;
}
/*
var al = array_length(myMovedEntities);
var newArray = [];
for (var i = 0; i < al; i++)
{
	if (array_contains(newHits,myMovedEntities[i]))
	{
			
	}
}
if array_length(newHits) != array_length(myMovedEntities)
{
	myMovedEntities = newHits;
}
else
{
	myMovedEntities = movedEntities;
}*/