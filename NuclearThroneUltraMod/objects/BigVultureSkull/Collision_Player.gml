/// @description Go to Savanna
if spr_idle == sprBigVultureSkullOpen
{
	if KeyCont.key_pick[other.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		snd_play(other.snd_thrn);

		with other
		{
			area = 10
			subarea = 0
		}
		mask_index = mskPickupThroughWall;
		//with enemy
		//	my_health = 0
		spr_idle = sprBigVultureSkull;
		spr_hurt = sprBigVultureSkullHurt;
		with instance_create(x,y,Portal)
		{
			type = 1
			pullstrength = 3;
			alarm[1] = 1;
		}
		with BigFishSkull {
			spr_idle = sprBigFishSkull;
			sprite_index = sprBigFishSkull;
		}
	}
	
}