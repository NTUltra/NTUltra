/// @description Freeze the fucker
if (array_length(hitEntities) > 0 && instance_exists(hitEntities[array_length(hitEntities)-1]))
{
	var hitGuy = hitEntities[array_length(hitEntities)-1];
	with hitGuy
	{
		BackCont.shake += 1;
		scrFreezeTarget(6);
	}
}