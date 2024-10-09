if !collision_point(x,y,Floor,false,false)
{
	spr_dead = spr_dead_mid_air;	
}
scrDropNearby(35,0);
var dir = random(360);
repeat(3)
{
	with instance_create(x,y,AcidStreak)
	{
		motion_add(dir,8)
		image_angle = direction
	}
	dir += 120
}
if fps_real >= fps
	repeat(3+irandom(4))
	{
		with instance_create(x,y,RavenFeather)
		{
			image_index = 10;
		}
	}