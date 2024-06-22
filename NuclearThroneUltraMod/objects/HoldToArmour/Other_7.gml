/// @description EAT
with Player
{
	if scrCanArmourHeal(true)
	{
		if armour == maxarmour
		{
			freeArmourStrike = true;	
		}
		else
		{
			armour += 1;
		}
		snd_play_2d(sndArmourHeal);
	}
	var hits = ds_list_create();
	var al = collision_circle_list(x,y,300,enemy,false,false,hits,false);
	for (var i = 0; i < al; i ++)
	{
		with hits[| i]
		{
			with instance_create(other.x,other.y,SnakeBiteFx)
			{
				target = other.id;
				// image_angle = point_direction(x,y,other.x,other.y);
			}
			with instance_create(x,y,Venom)
			{
				team = 2;
				owner = other.id
				rate += irandom_range(-3,1);
				alarm[0] = rate;
				amount += 1;
			}
		}
	}
}
instance_destroy();