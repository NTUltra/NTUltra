/// @description wee animation
event_inherited();
with instance_create(x,y,AnimDestroyRotation)
{
	sprite_index = sprWhirlPoolDisappear;
	rotation = other.rotation * -1;
}