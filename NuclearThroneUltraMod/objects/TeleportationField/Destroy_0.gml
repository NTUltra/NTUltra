/// @description wee animation
with instance_create(x,y,AnimDestroyTopRotation)
{
	sprite_index = sprAtomTeleportationFieldDisappear;
	rotation = other.rotation  * -1.5;
}