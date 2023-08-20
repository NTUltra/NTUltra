/// @description Curse

with instance_create(x + random(50) - 25,y + random(20),Curse)
	depth = other.depth-1;

alarm[3] = 4 + irandom(8);