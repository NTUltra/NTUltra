if instance_exists(Corpse)
{
    if place_meeting(x,y,Corpse)
    {
		with Corpse
		{
		    if place_meeting(x,y,TechnomancerRevive)
		    {
			    with instance_create(x,y,ReviveFX)
					sprite_index = sprNecroRevive;
				instance_destroy(id,false);
				with instance_create(x,y,Necromancer)
				{
					raddrop = 0;
					countKill = false;
					existTime = 30;
					alarm[1] *= 0.6;
				}
		    }
		}
    }
}

instance_destroy();