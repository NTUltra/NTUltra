/// @description increase charge
if instance_exists(creator)
{
	if (scrCanChargeChargeGun())
	{
		rate ++;
		snd_play(sndMeleeFlip,0,true,false,3,false,false,0.6,false,id,1+(rate/maxcharge));
		if rate % 2 == 0
			creator.wkick = -rate;
		else
			creator.wkick = rate;
			/*
		with instance_create(x+random(48)-24,y+random(48)-24,WeaponCharge)
		{
			motion_add(point_direction(x,y,other.x,other.y),2+random(1))
			alarm[0] = 3 + speed;
		}*/
		repeat(rate)
			with instance_create(x + random_range(8,-8),y + random_range(8,-8), Smoke)
			{
				speed += min(3,other.rate * 0.3);	
			}
		BackCont.shake+=1+rate*0.1;
		switch (rate)
		{
			case 1:
				creator.wep_sprt[786] = sprChargeLance1;
			break;
			case 2:
				creator.wep_sprt[786] = sprChargeLance2;
			break;
			case 3:
				creator.wep_sprt[786] = sprChargeLance3;
			break;
			case 4:
				creator.wep_sprt[786] = sprChargeLance4;
			break;
			case 5:
				creator.wep_sprt[786] = sprChargeLance5;
			break;
			case 6:
				creator.wep_sprt[786] = sprChargeLance6;
			break;
			default:
				creator.wep_sprt[786] = sprChargeLance7;
			break;
		}
	}
}

if rate < maxcharge && instance_exists(Player)
{
	alarm[0] = chargetime;
}
else
{
	alarm[1] = 0;
}