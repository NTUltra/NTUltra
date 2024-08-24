if !instance_exists(ShopWheel)
	instance_destroy();

if instance_exists(Player)
{
	if place_meeting(x,y,ShopSelector)
	{
		image_index=1;
		if ShopWheel.alarm[0] > 0 && !ShopWheel.used
		{
		    if (HogSpend())
			{
				with Player
			    {
					alarm[2] += 90;
				    if !instance_exists(GunWarrant)
						instance_create(x,y,GunWarrant);
					else
					{
						with GunWarrant
						{
							sprite_index = sprGunWarrantStart;
							image_index = 0;
						}
					}
				}
		    }

		}
	}
	else
		image_index=0;


}

