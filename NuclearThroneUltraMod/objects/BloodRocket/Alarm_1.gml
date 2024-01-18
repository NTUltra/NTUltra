/// @description Bloody mess
with instance_create(x,y,BloodStreak)
{
	motion_add(other.direction + 180 + random_range(12,-12),3+random(6));
	image_xscale = random_range(1,0.5);
	image_yscale = random_range(0.9,1);
	image_angle = direction
	image_speed += random(0.4);
}
with instance_create(x + hspeed*0.5,y + vspeed *0.5,BloodStreak)
{
	motion_add(other.direction + 180,3+random(6));
	image_xscale = random_range(1,0.5);
	image_yscale = random_range(0.9,1);
	image_angle = direction
	image_speed += random(0.4);
}
alarm[1] = 1;
speed += 1;