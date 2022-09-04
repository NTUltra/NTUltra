if instance_exists(Corpse)
{
    if place_meeting(x,y,Corpse)
    {
		with Corpse
		{
		    if place_meeting(x,y,InvertedReviveArea)
		    {
				instance_destroy(id,false);
				with instance_create(x,y,InvertedFreak)
				{
					existTime = 30;
					raddrop = 0;
				}
			    with instance_create(x,y,ReviveFX)
				{
					sprite_index = sprReviveInverted;	
				}
				with instance_create(x,y,TrapFire)
				{motion_add(random(360),1+random(2))
				team = 1;
				move_contact_solid(direction,6)
				image_speed=0.5+random(0.2);
				sprite_index= sprFireLilHunter;}
		    }
		}
    }
}

instance_destroy();

