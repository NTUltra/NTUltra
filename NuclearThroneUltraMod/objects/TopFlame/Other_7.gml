/// @description TopSmoke
instance_destroy()
	with instance_create_depth(x,y,depth + 2,JumpDust) {
		sprite_index = sprSmoke;
		motion_add(other.direction,other.speed*0.5);
	}
