/// @description Update text
if name != ""
{
	alarm[1] = 5;
	with Player
	{
		if my_health >= 3
			other.name = "SACRIFICE BLOOD?";
		else
			other.name = "COLLECT BLOOD?";
	}
}