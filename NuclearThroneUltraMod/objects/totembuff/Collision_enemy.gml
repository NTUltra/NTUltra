/// @description xxx
if !array_contains(buffList,other.id)
{
	buffList[array_length(buffList)] = other.id;
	with other
	{
		with instance_create(x,y-(sprite_height*0.5),HealFX)
		{
			depth = other.depth - 2;
		}
		if !totemBuffed {
			my_health += maxhealth;
			maxhealth *= 2;
			totemBuffed = true;
		} else {
			my_health += maxhealth*0.25;
			my_health = min(my_health,maxhealth);
		}
		if alarm[1] > 10
			alarm[1] -= 10;
	}
}