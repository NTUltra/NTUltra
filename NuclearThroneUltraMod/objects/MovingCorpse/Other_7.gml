image_index = image_number-1
image_speed = 0
if !collision_point(x,y,Floor,false,false)
{
	instance_destroy();
	with instance_create(x,y,CorpseFalling)
	{
		sprite_index = other.sprite_index;
		image_index = other.image_index;
		image_angle = other.image_angle;
		speed = other.speed;
		direction = other.direction;
	}
}
alarm[0] = 30
