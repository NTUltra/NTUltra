/// @description Position
if instance_exists(creator) && creator.target > -1 && instance_exists(creator.target){
	var dir = point_direction(creator.x,creator.y,creator.target.x,creator.target.y);
	var dis = point_distance(creator.x,creator.y,creator.target.x,creator.target.y);
	if (dis < 84 || dis > 250 || collision_line(creator.x,creator.y,creator.target.x,creator.target.y,Wall,false,false))
	{
		event_user(1);
	}
	else
	{
		x = creator.x + lengthdir_x(distance,dir);
		y = creator.y + lengthdir_y(distance,dir);
	}
	if visible
		image_speed = 0.4;
	//var ws = waveSpeed;
	//if UberCont.normalGameSpeed == 60
	//	ws *= 0.5;
	
	//if wave >= 1.05 || wave <= -0.05
	//	waveSpeed *= -1;
	//wave += waveSpeed;
	scrForcePosition60fps();
}