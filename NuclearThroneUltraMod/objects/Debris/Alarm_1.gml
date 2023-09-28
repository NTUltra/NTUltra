
if speed > 1
{
alarm[1] = random(20)/speed
/*
	if doFire && speed > 3
	{
		alarm[1] += 1;
		with instance_create_depth(x,y,depth+1,Flame) {
			team = 2;
			wepFire = -1;
			image_speed += 0.1;
			image_xscale -= 0.2;
			image_yscale -= 0.2;
			direction = other.direction + 180 + random_range(-40,40);
			speed = max(3,other.speed*0.25);
		}	
	}
	else
	{*/
		instance_create(x,y,Dust)
	//}
}

