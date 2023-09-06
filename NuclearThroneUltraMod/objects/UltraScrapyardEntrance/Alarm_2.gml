/// @description Ultra

with instance_create(x + random(10) - 5,y + random(10) - 5,PlutoFX)
	depth = other.depth-1;

alarm[2] = 20 + irandom(10);