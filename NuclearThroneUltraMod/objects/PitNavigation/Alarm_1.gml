/// @description Next area

if instance_exists(Player)
{
	if Player.area == 100
	{
		instance_deactivate_object(PitNavigation)
		exit;
	}
	var ar = currentArea;
	switch (ar)
	{
		case 127:
			//INV Graveyard to INV mansion
			persistent = false;
			alarm[3] = 75;
			with Player
			{
				if scrIsCrown(10)
				{
					baseWeaponTier += 1;
					gameDifficulty += 1;
				}	
			}
		break;
		case 125:
		//INV mansion to inv scrapyard
			currentArea = 106;
			with Player
			{
				baseWeaponTier += 1;
				gameDifficulty += 1;
			}
			event_user(0);
		break;
		case 106:
		//inv scrapyard to inv caves
			currentArea = 111;
			event_user(0);
		break;
		case 111:
		//inv caves to inv mushroom
			currentArea = 124;
			with Player
			{
				if scrIsCrown(10)
				{
					baseWeaponTier += 1;	
					gameDifficulty += 1;
				}
			}
			event_user(0);
		break;

		case 124:
			//INV mush to inv volc
			currentArea = 108;
			event_user(0);
		break;
		case 108:
		//Inv volc to inv Labs
			currentArea = 112;
			with Player
			{
				baseWeaponTier += 1;	
				gameDifficulty += 1;	
			}
			event_user(0);
		break;
		case 112:
		//Inv Labs to inv froz
			currentArea = 107
			with Player
			{
				baseWeaponTier += 1;	
			}
			event_user(0);
		break;
		case 107:
			with CorpseCollector
			{
				with instance_nearest(px,py,Wall)
				{
					other.x = x + 8;
					other.y = y + 8;
				}
				if !instance_exists(Portal)
					with instance_create(x,y,Portal) {
						typ = 1;
						inverted = false;
						byPassCheck = true;
					}
			}
			event_user(2);
		break;
		case 104:
			with CorpseCollector
			{
				with instance_nearest(px,py,Wall)
				{
					other.x = x + 8;
					other.y = y + 8;
				}
				if !instance_exists(Portal)
					with instance_create(x,y,Portal) {
						typ = 1;
						inverted = false;
						byPassCheck = true;
					}
			}
		break;
	}
}
else
{
	alarm[1] = 10;	
}