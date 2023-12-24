/// @description xxx
alarm[0] = 5;
while (place_meeting(x,y,WeaponMod))
{
	with instance_place(x,y,WeaponMod)
	{
		if x < other.x
			x -= 4;
		else
			x += 4;
		if place_meeting(x,y,WeaponMod)
		{
			with other
			{
				alarm[0] = 0;
				exit;
			}
		}
	}
}