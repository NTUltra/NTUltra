/// @description Next area
if instance_exists(Player)
{
	var ar = currentArea;
	switch (ar)
	{
		case 127:
			//INV Graveyard to INV mansion
			alarm[3] = 75;
			with Player
			{
				if scrIsCrown(10)
				{
					hard += 1;	
				}	
			}
		break;
		case 125:
		//INV mansion to inv scrapyard
			currentArea = 106;
			with Player
			{
				hard += 1;
				
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
					hard += 1;	
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
				hard += 1;	
			}
			event_user(0);
		break;
		case 112:
		//Inv Labs to inv froz
			currentArea = 107
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
			scrEndBossMusic();
			with UberCont
			{
				portalEssence += 3
				if voidChallengeGoing[0]
					portalEssence += 3;
			}
			with Player
			{
				inverted = false;
				area = 9;
				subarea = 1;
				lastarea = 9;
				lastsubarea = 1;
			}
			instance_destroy();
		break;
	}
}
else
{
	alarm[1] = 10;	
}