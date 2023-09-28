instance_destroy()
	with instance_create_depth(x,y,depth + 2,Smoke) {
		motion_add(other.direction,other.speed*0.5);
	}
