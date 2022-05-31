if instance_exists(Corpse)
{
    if place_meeting(x,y,Corpse)
    {
		with Corpse
		{
		    if place_meeting(x,y,InvertedGoldReviveArea)
		    {
			    with instance_create(x,y,ReviveFX)
					sprite_index = sprInvertedGoldRevive;
				instance_destroy(id,false);
				with instance_create(x,y,choose(InvertedFreak,InvertedExploFreak))
				{
					droprate = 8;
					raddrop = 0;
					snd_play(choose(sndSpark1,sndSpark2),0.1)
					var ang = random(360);
					var am = 4;
					var angStep = 360/am;
					var l = 6;
					repeat(am)
					{
						with instance_create(x,y,Lightning)
						{
							image_angle = ang;
							team = other.team
							ammo = l;
							event_perform(ev_alarm,0)
							visible = 0
							with instance_create(x,y,LightningSpawn)
							image_angle = other.image_angle
						}
						ang += angStep;
					}
				}
		    }
		}
    }
}

instance_destroy();