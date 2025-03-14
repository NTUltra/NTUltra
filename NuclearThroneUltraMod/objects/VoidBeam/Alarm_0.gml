/// @description Position and scale
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
	var aim = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	var len = 300;
	var hit = collision_line_point(x,y,x + lengthdir_x(len,aim),y + lengthdir_y(len,aim),Wall,false,false);
	targetX = lerp(targetX,hit[1],curveUpdate);
	targetY = lerp(targetY,hit[2],curveUpdate);
	image_angle = point_direction(x,y,targetX,targetY);
	image_xscale = max(1,point_distance(x,y,targetX,targetY));
}
alarm[0] = 1;