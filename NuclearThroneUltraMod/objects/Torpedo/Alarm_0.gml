/// @description Wind up
repeat(2)
	with instance_create(x,y,Dust)
	{
		depth = other.depth + 1;
		sprite_index = sprBubble;
		speed += 1;
		motion_add(direction+180,1);
	}
image_speed = 0.4;