/// @description On the ground initially
if intro == 0 && alarm[2] > 30 && object_index == InvertedLilHunter
{
	alarm[6] = 5;
	if instance_exists(Player) && point_distance(x,y,Player.x,Player.y) < 300
	{
		alarm[2] = 30;
		alarm[6] = 0;
	}
}