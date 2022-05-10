active = 1
BackCont.shake += 3

repeat(5)
instance_create(x,y,Smoke)

with instance_create(x,y,SterNuke)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(4)-2),2)
image_angle = direction
team = other.team}

