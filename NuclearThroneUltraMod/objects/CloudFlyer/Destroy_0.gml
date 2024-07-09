
scrDropNearby(25,0);
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
	repeat(3+irandom(5))
	{
		with instance_create(x,y,RavenFeather)
		{
			image_index = 10;
		}
	}