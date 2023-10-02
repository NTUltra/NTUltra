/// @description Atom neutron fire explosion
with instance_create(x,y,Flame)
{
	team = 2
	motion_add(random(360),2);
	depth = other.depth + 1;
}

