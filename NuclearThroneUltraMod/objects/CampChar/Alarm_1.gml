/// @description Panda eat
with instance_create(x+2,y+4,Shell)
{
	motion_add(random_range(90,-110),1.5+random(1.6));
	depth = other.depth - 1;
	image_speed = 0;
	sprite_index = sprPandaBambooEat;
	image_index = irandom(image_number);
	alarm[0] *= 0.5;
	time = 5;
}
if Menu.race == 14
	alarm[1] = 5 + random(10);