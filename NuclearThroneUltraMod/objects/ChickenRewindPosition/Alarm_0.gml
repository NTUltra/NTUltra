/// @description Smoke
with instance_create(x + random_range(8,-8), y + random_range(8,-8),Smoke)
{
	vspeed -= random_range(1,2);	
}
alarm[0] = 1;