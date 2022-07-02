if instance_exists(Player)
{

	if other.team == Player.team
	{
		if Player.ultra_got[93] = 1
		{
		    with other
		    {
			    if typ!=0
			    {
			        do
			        {
			        x+=lengthdir_x(2,direction);
        
			        y+=lengthdir_y(2,direction);
        
			        if place_meeting(x,y,Wall)
			        instance_destroy();
        
			        }
			        until(place_free(x,y) || place_meeting(x,y,Wall) || !place_meeting(x,y,VikingWall) )
			    }
		    }
		}
		else
		{
			instance_destroy();

		    with other
		    {
				if typ!=0
					instance_destroy();
		    }
		}

	}
	else
	{
		if Player.skill_got[5]=1
		{
			with other
			{
				if typ == 1
				{
					team = 2
					if instance_exists(enemy)
					{
						var n = instance_nearest(x,y,enemy)
						direction = point_direction(x,y,n.x,n.y);
					}
					else
						direction = point_direction(x,y,other.x,other.y);
					speed += 1;
					speed *= 2;
					image_angle = direction;
					with instance_create(x,y,Deflect)
					{
						image_angle = other.direction
					}
					snd_play(sndRicochetWall,0.1,true);

				}
				if typ == 2
				{
					instance_destroy()
				}
			}
		}
		else
		{
		    with other
		    {
				instance_destroy();
		    }
		}

	}
}

