event_inherited()

motion_add(targetDirection,acc);

//Our screen is not as high but it is wide!
if abs(vspeed) > maxSpeed - 0.2
	vspeed = (maxSpeed - 0.2) * sign(vspeed)
if speed > maxSpeed
{
	speed = maxSpeed
}

image_angle += rotation;

if instance_exists(Player)
{
	var dis = point_distance(x,y,Player.x,Player.y)
	if !active && dis < 200
	{
		instance_create(x,y,DramaCamera);
		active = true;
	}
	//Get close slow down for fairness
	if dis < discSlowRange && speed >= maxSpeed - discSlowAmount
	{
		speed = maxSpeed - discSlowAmount;
	}
}
if !firstEntry
	speed = 0;