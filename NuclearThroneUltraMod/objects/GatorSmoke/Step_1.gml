/// @description Change when ded

// Inherit the parent event
event_inherited();
if my_health <= 0
{
	instance_destroy(id,false);
	with instance_create(x,y,Gator) {
		my_health = my_health;
	}
}