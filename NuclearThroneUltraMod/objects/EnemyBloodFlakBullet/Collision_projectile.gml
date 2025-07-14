if team != other.team
{
	with other
	{
		if (typ == 1 || typ == 2)
		{
			if isGrenade
				instance_destroy(id,false);
			else
				instance_destroy();
			snd_play(sndBloodAbsorb,0.1,true);
			with instance_create(x,y,BloodStreak)
			{
				motion_add(other.direction,other.speed)
				image_angle = direction
			}
		}
		else if other.typ == 3
		{
			with other
			{
				x = xprevious;
				y = yprevious;
			}
		}
	}
}