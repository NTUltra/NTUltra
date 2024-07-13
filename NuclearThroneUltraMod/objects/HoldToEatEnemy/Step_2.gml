/// @description Position
if instance_exists(Player) && target != noone && instance_exists(target)
{	
	x = target.x;
	y = target.y - 24;
	if point_distance(Player.x,Player.y,target.x,target.y) > range + 8
	{
		if UberCont.normalGameSpeed == 60
			image_index -= image_speed * 1.5;
		else
			image_index -= image_speed * 3;
		if image_index <= 0
		{
			snd_play(sndRobotEatFail);
			instance_destroy();	
		}
	}
}
else
{
	instance_destroy();	
}