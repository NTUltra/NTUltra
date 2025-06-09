if sprite_index == spr_special
{
	sprite_index = spr_slct;
	exit;
}
if Menu.race = num
{
	if sprite_index != spr_menu
	{
		if sprite_index == spr_to
			sprite_index = spr_menu
		else
		{
			if num=15//atom fx
			{
			    repeat(5)
			    {
			    with instance_create(x,y,Smoke)
			    motion_add(random(360),1+random(3))
			    }
			}
			else if num == 28
			{
				if random(3) < 1
				{
					spr_to = sprThiefMenuSelectFlash;
					with CampChar
					{
						if num == 10
						{
							sprite_index = spr_special;
							image_index = 0;
						}
					}
				}
				else
				{
					spr_to = sprThiefMenuSelectNoFlash;	
				}
			}
			sprite_index = spr_to
		}
	}
}
else
{
	if sprite_index != spr_slct
	{
		if sprite_index = spr_from 
			sprite_index = spr_slct
		else
		{
			if num=15//atom fx
			{
			    repeat(5)
			    {
			    with instance_create(x,y,Smoke)
			    motion_add(random(360),1+random(3))
			    }
			}
			sprite_index = spr_from 
		}
	}
}

