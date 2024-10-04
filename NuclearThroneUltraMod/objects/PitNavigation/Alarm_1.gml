/// @description Next area
if instance_exists(Player)
{
	var ar = Player.area
	with Player
	{
		alarm[3] = max(alarm[3],15);
		subarea = 1;
		switch (area)
		{
			case 124:
				//INV mush to inv volc
				area = 108;
				with other { event_user(0); }
			break;
			case 108:
			//Inv volc to inv Labs
				area = 112;
				with other { event_user(0); }
			break;
			case 112:
			//Inv Labs to inv froz
				area = 107
				with other { event_user(0); }
			break;
			case 107:
				with CorpseCollector
				{
					with instance_nearest(px,py,Wall)
					{
						other.x = x + 8;
						other.y = y + 8;
					}
					with instance_create(x,y,Portal) {
						typ = 1;
						inverted = true;
						byPassCheck = true;
					}
					
				}
			break;
			
			case 121://Inv savanna
				area = 102;//Inv swer
				with other { event_user(0); }
			break;
			case 102:
				//Inv sewer to inv crystal caves
				area = 111;
				with other { event_user(0); }
			break;
			case 111:
				area = 138;//Inv crystal to cloudlands
				with other { event_user(0); }
			break;
			
			case 106:
				//Scrap to jungle
				area = 123;
				with other { event_user(0); }
			break;
			case 123:
				//Jungle to YV
				area = 125;
				with other { event_user(0); }
			break;
			case 125:
				//YV to Wonder
				area = 109
				with other { event_user(0); }
			break;
			case 109:
				//Wonder to palace and end game
				with CorpseCollector
				{
					with instance_nearest(px,py,Wall)
					{
						other.x = x + 8;
						other.y = y + 8;
					}
					with instance_create(x,y,Portal) {
						typ = 1;
						inverted = true;
						byPassCheck = true;
					}
					
				}
			break;
			
		}
	}
}
else
{
	alarm[1] = 10;	
}