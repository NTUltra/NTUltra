active = 1
BackCont.shake += 3

repeat(5)
with instance_create(x,y,Smoke)
	depth = other.depth + 1;

with instance_create(x,y,SterNuke)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(4)-2),2)
image_angle = direction + 180
team = other.team
alarm[1] = 0;}

