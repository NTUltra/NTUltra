if instance_number(AngelActive) > 1
{
	var isActuallyStacking = false;
	with AngelActive
	{
		if id != other.id && object_index == other.object_index
		{
			isActuallyStacking = true;
			alarm[0] += 14;
			image_index = 0;
			image_speed = image_number/alarm[0];
		}
	}
	if isActuallyStacking
		instance_destroy();
}
alarm[0] = 14;
team = 2;
if instance_exists(Player)
{
	team=Player.team;
	Player.alarm[3] += 14;
}
image_speed = image_number/alarm[0];
