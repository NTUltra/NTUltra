/// @description Start wave
//Surprise attack
if !disable
{
	with Player
		isOnInteractable = true;
	if KeyCont.key_pick[other.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		disable = true;
		with BigVultureSkull
		{
			if spr_idle == sprBigVultureSkullOpen
			{
				my_health = 0;
				snd_play(sndGhostBossExplosionAttack,0.1)
				with instance_create(x,y,BecomeGhostExplosion)
				{
					team = 7;
					sprite_index = sprGhostAboutToExplodeMedium;
					explosionSize = 2;
					if instance_exists(Player)
						motion_add(point_direction(Player.x,Player.y,x,y),0.25);
				}
				if GetPlayerLoops() > 0
				{
					with other
					{
						with instance_create(x,y,Portal)
						{
							type = 1
							pullstrength = 3;
							alarm[1] = 1;
							x = other.x;
							y = other.y;
							scrForcePosition60fps();
							with Player
							{
								area = 139
								subarea = 0
								lockout = true;
								if loops < 1
									hard += 2;
								x = other.x;
								y = other.y;
								scrForcePosition60fps();
							}
						}
						with enemy
						{
							my_health = 0;
							prevhealth = 0;
						}
						with instance_create(x,y,PortalEnviromentReplacer)
						{
							area = 139;
							prevArea = 1;
						}
					}
				}
			}
		}
	}
}