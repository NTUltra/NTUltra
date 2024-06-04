/// @description Fire end
if sprite_index == spr_fire
{
	sprite_index = spr_idle;
	var ang = random(360);
	repeat(6)
	{
		with instance_create(x+random(6)-3,y+random(6)-3,LaserCharge)
		{
			motion_add(ang,4+random(1))
			alarm[0] = 2+random(4)
		}
		ang += 60;
	}
}