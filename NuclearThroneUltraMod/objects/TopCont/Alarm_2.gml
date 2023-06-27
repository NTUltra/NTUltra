/// @description Crown of blindness
alarm[2] = 2;
with projectile
{
	if team != 2
	{
		if !place_meeting(x,y,enemy)
		{
			team = -1;	
		}
	}
}
