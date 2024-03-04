/// @description Freeze the fucker
var hitGuy = hitEntities[array_length(hitEntities)-1];
with hitGuy
{
	BackCont.shake += 1;
	scrFreezeTarget(other.freezetime);
}