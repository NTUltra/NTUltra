/// @description Position to aim

if creator != noone && instance_exists(creator)
{
	var dis = point_distance(x,y,creator.x,creator.y);
	var aim = point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y);
	x = creator.x + lengthdir_x(dis,aim);
	y = creator.y + lengthdir_y(dis,aim);
	direction = aim;
	image_angle = direction;
}