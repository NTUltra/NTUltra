if alarm[11] > 1 && frozen//Frozen
{
	/*
if alarm[1] > 1 && alarm[1] < 3
{
	alarm[1]=4;
	alarm[11] -= 1;
}*/
	if alarm[1] < 2
	{
		frozen = false
	}
	else if alarm[11] < 10
	{
		frozen = false;
	}

	if instance_exists(Player)
	{
		if Player.race != 3 && !(KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2)
		{
			x=xprevious;
			y=yprevious;
			if sprite_index != spr_hurt && Player.race=24//Elementor's passive
			{
				if UberCont.normalGameSpeed == 60
					DealDamage(0.25,true);
				else
					DealDamage(0.5,true);
				snd_play(snd_hurt, hurt_pitch_variation);
				sprite_index=spr_hurt
			}
		}
	speed = 0;
	target = -1;
	//image_speed=0;
	}
}

///Damage indicator
scrEnemyTakingDamage();
