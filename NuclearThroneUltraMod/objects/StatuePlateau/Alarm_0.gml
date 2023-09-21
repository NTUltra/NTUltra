/// @description xxx
alarm[0] = 5;
while (place_meeting(x,y,WeaponMod))
{
	with instance_place(x,y,WeaponMod)
	{
		if x < other.x
			x -= 8;
		else
			x += 8;
	}
}