event_inherited()

motion_add(targetDirection,acc);

if speed > maxSpeed
speed = maxSpeed

image_angle += rotation;

if instance_exists(Player)
{
	var dis = point_distance(x,y,Player.x,Player.y)
	if !active && dis < 200
	{
		instance_create(x,y,DramaCamera);
		active = true;
	}
}
if !firstEntry
	speed = 0;