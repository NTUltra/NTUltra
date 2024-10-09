/// @description Scale it to its range
image_xscale = needleRange/sprWdth
with instance_create(x + lengthdir_x(sprWdth * image_xscale,image_angle),y + lengthdir_y(sprWdth * image_xscale,image_angle),BloodStreak)
{
	motion_add(other.direction,3)
	image_yscale += 0.25;
	image_xscale -= 0.125;
	image_angle = direction;
}
image_yscale *= choose(1,-1);
right = choose(1,-1);