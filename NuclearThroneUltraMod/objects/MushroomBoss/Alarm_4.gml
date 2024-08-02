/// @description Shift type
if mode == 0
{
	//TOXIC
	mode = 1;
	spr_idle = spr_idle_toxic;
	spr_walk = spr_walk_toxic;
	spr_hurt = spr_hurt_toxic;
	spr_dead = spr_dead_toxic;
	spr_fire = spr_fire_toxic;
	immuneToTypeDamage = 1;
	venomous = true;
	meleedamage = 4;
	forceAnimation = spr_idle;
	event_user(14);
}
else
{
	//EARTH
	mode = 0;
	spr_idle = spr_idle_earth;
	spr_walk = spr_walk_earth;
	spr_hurt = spr_hurt_earth;
	spr_dead = spr_dead_earth;
	spr_fire = spr_fire_earth;
	venomous = false;
	meleedamage = 0;
	immuneToTypeDamage = 0;
	forceAnimation = spr_idle;
	event_user(14);
}