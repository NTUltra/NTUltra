if(area!=108)
{
	instance_create(x+16+random_range(-16,16),y+16+random_range(-16,16),LavaBubble);
	alarm[1] = 10 + irandom(120);
}
