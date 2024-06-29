/// @description Go to Savanna
if spr_idle == sprBigVultureSkullOpen
{
	if KeyCont.key_pick[Player.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		snd_play(Player.snd_thrn);

		with Player
		{
			area = 10
			subarea = 0
		}
		mask_index = mskPickupThroughWall;
		//with enemy
		//	my_health = 0
		spr_idle = sprBigVultureSkull;
		sprite_index = sprBigVultureSkull;
		spr_hurt = sprBigVultureSkullHurt;
		with instance_create(x,y,Portal)
		{
			type = 1
			pullstrength = 3;
			with Player
			{
				lockout = true;
				x = other.x;
				y = other.y;
				scrForcePosition60fps();
			}
			alarm[1] = 1;
			x = other.x;
			y = other.y;
		}
		with enemy
		{
			my_health = 0;
			prevhealth = 0;
		}
		with BigFishSkull {
			spr_idle = sprBigFishSkull;
			sprite_index = sprBigFishSkull;
		}
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 10;
			prevArea = 1;
		}
	}
	
}