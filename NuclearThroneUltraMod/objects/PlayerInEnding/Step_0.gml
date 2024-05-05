/// @description Go to ending brother
if instance_exists(GameEnd) && sprite_index != spr_sit && sprite_index != spr_go_sit
{
	var dir = point_direction(x,y,GameEnd.x,GameEnd.y)
	if UberCont.normalGameSpeed == 60
		motion_add(dir,acceleration * 0.5);
	else
		motion_add(dir,acceleration);
	if speed > 0 
		sprite_index = spr_walk;
	else
		sprite_index = spr_idle;
}
if speed > maxSpeed
	speed = maxSpeed