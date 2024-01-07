/// @description Some sparkes
with instance_create(x+random(96)-48,y+random(96)-48,LaserCharge)
{
	motion_add(random(360),random(1));
	vspeed += random_range(0.5,1.5);
}
alarm[0] = 1;