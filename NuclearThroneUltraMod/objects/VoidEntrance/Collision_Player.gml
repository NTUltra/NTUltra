/// @description GO TO vOID
with Player
{
	radFloor = 0;
	purpleRadFloor = 0;
}
if image_index == 2 && !wentIn
{
	with Player
		isOnInteractable = true;
	if KeyCont.key_pick[other.p] = 1
	{
		wentIn = true;
		snd_play(sndOasisHorn);
		name = "";
		KeyCont.key_pick[Player.p] = 2;
		
		var prevA = UberCont.area;
		if instance_exists(Player)
			prevA = Player.area;
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 137;
			prevArea = prevA;
		}
		snd_play(sndVoidCreepEnd);
		with instance_create(x,y,SecretSheepNavigation)
		{
			lastarea = Player.area;
			inverted = Player.inverted;
			lastsubarea = Player.subarea;
		}
		with instance_create(x,y,Portal){
			type = 1
			pullstrength = 3;
			alarm[1] = 1;
			x = other.x;
			y = other.y;
			scrForcePosition60fps();
			with Player
			{
				lockout = true;
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
		with Pickup
		{
			instance_destroy(id,false);	
		}
	}
}