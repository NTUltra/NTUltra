/// @description Go to ending brother
if instance_exists(GameEnd)
{
	var dir = point_direction(x,y,GameEnd.x,GameEnd.y)
	motion_add(dir,acceleration);
}
if sprite_index != spr_sit
{
	if speed > 0 
		sprite_index = spr_walk;
	else
		sprite_index = spr_idle;
}
if speed > maxSpeed
	speed = maxSpeed