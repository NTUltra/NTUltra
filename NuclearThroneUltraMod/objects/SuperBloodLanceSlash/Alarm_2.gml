/// @description More Blood
if image_index < image_number - 3
{
	alarm[2] = 5;
	with instance_create(x + lengthdir_x(16 * image_index,direction),y + lengthdir_y(16 * image_index,direction),BloodStreak)
	{
		motion_add(other.direction + random_range(30,-30),6 + random(4))
		image_angle = direction;
	}
}