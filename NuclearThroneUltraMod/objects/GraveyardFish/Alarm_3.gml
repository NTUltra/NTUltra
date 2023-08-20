/// @description Curse

with instance_create(x + random(50) - 25,y + random(32) - 16,Curse)
	depth = other.depth-1;

alarm[3] = 3 + irandom(6);