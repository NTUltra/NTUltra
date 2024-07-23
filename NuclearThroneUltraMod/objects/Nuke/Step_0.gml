if active = 1
{
with instance_create(x,y,Smoke)
	depth = other.depth + 1;
if speed > 5.2
speed = 5.2

///is nuke within view
if instance_exists(Player) && point_distance(x,y,Player.x,Player.y) < 300
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.3)

motion_add(direction,0.15)

if BackCont.shake < 3
BackCont.shake = 3
}

image_angle = direction

