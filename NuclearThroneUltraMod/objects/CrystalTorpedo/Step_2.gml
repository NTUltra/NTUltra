/// @description Immune

// Inherit the parent event
event_inherited();

with Player {
	x = other.x;
	y = other.y;
	meleeimmunity = max(meleeimmunity,2);
	alarm[3] = max(alarm[3],2);
	scrForcePosition60fps();
}
