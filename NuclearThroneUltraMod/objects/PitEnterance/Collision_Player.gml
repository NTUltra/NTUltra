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
				}
			}
		}
	}
}