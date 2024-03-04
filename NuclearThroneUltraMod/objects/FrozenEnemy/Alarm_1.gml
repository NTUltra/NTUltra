/// @description Delay before we can seriously draw the icicle
with owner {
	if my_health > 0
		other.ownerIsDead = false;
}
if ownerIsDead
{
	instance_destroy();
}	