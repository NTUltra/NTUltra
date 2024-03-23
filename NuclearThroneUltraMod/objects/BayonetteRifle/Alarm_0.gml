/// @description increase charge
if instance_exists(creator)
{
	if (scrCanChargeChargeGun())
	{
		rate ++;
		snd_play(sndMeleeFlip,0,true,false,3,false,false,0.6,false,id,1+(rate/maxcharge));
		if rate == 14
		{
			//snd_play(sndMeleeFlip);
			with creator
			{
				wep_sprt[740] = sprBayonetteRifleActive;
			}
		}
		creator.wkick = 1;
		with instance_create(x+random(48)-24,y+random(48)-24,WeaponCharge)
		{
			motion_add(point_direction(x,y,other.x,other.y),2+random(1))
			alarm[0] = 3 + speed;
		}
		BackCont.shake+=1+rate*0.1;
	}
}

if rate < maxcharge && instance_exists(Player)
{
	alarm[0] = chargetime;
}
else
{
	alarm[1] = 0;
	audio_stop_sound(sndChargeMedium);
	audio_stop_sound(sndChargeShort);
	audio_stop_sound(sndChargeLong);
}