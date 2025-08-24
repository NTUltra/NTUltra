/// @description ARMOUR
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
			if armour > maxarmour
			{
				scrExcessResource(8,1);
				armour = maxarmour;	
			}
		}
		BackCont.shake += 5;
		snd_play_2d(sndArmourHeal);
		var hits = ds_list_create();
		var al = collision_circle_list(x,y,300,enemy,false,false,hits,false);
		if al > 0
		{
			if al > 10
				snd_play_2d(sndVikingSerpentBiteUpg,0.1)
			else
				snd_play_2d(sndVikingSerpentBite,0.1);
			BackCont.shake += 10;
			BackCont.shake += min(40,al*5);
		}
		for (var i = 0; i < al; i ++)
		{
			with hits[| i]
			{
				with instance_create(other.x,other.y,SnakeBiteFx)
				{
					target = other.id;
					if target.x > x
						flipped = 1;
					else
						flipped = -1;
					alarm[0] += i;
				}
				with instance_create(x,y,Venom)
				{
					team = 2;
					owner = other.id
					rate += irandom_range(-4,1);
					alarm[0] = rate;
					amount += 2;
					dmg += 2;
				}
			}
		}
	}
}
instance_destroy();