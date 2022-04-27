if active = 1
{
instance_create(x,y,Smoke)
if speed > 5.2
speed = 5.2

///is nuke within view
if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.44)

motion_add(direction,0.1)

if BackCont.shake < 3
BackCont.shake = 3
}

image_angle = direction

