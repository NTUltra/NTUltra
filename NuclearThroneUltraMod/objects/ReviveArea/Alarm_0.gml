if instance_exists(Corpse)
{
    if place_meeting(x,y,Corpse)
    {
		with Corpse
		{
		    if place_meeting(x,y,ReviveArea)
		    {
			    instance_create(x,y,ReviveFX)
				instance_destroy(id,false);
				with instance_create(x,y,Freak)
				{
					existTime = 30;
					raddrop = 0;
				}
		    }
		}
    }
}

instance_destroy();