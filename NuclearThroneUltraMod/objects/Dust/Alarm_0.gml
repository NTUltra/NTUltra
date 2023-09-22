/// @description Bounce wall
alarm[0] = 2;
if collision_point(x,y,Wall,false,false)
	move_bounce_solid(false);