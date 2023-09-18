event_inherited();
if alarm[2] < 1 && (instance_number(enemy) = 0 || my_health < maxhealth)
{
	alarm[2] = 6
	instance_destroy(id,false);
	with instance_create(x,y,Gator) {
		my_health = other.my_health;
	}
	with instance_create(x, y, Shell) {
		sprite_index = sprCigarette
		motion_add(random(360), 2)
	}
}

