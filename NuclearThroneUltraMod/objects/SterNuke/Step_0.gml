if active = 1
{
instance_create(x,y,Smoke)
if speed > 5.2
speed = 5.2

motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.4)
motion_add(direction,0.1)

BackCont.shake+=5;

if BackCont.shake < 100
BackCont.shake = 100
}

image_angle = direction

