/// @description Trail
alarm[0] = 1;
with instance_create(x + random_range(4,-4),y + random_range(4,-4),CaveSparkle)
{
	image_angle = random(360);
	speed = 0.1;
	direction = image_angle;
}
dist += 1