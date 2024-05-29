/// @description CATCH SHEEP BRING IT HOME
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	snd_play(sndSheep);
	if other.race == 13
		scrUnlockBSkin(13,"SAVE A LOST SHEEP#AS SHEEP",0);
	if other.area != 8
	{
		persistent = true;
		snd_play(other.snd_thrn);
		with other
		{
			inverted = false;
			if area == 100
			{
				lastarea = 8;	
			}
			else if area == 114
			{
				area = 8;
				subarea = 2;
			}
			else
			{
				area = 8;
				subarea = 1;
			}
		}
		with instance_create(x,y,Portal)
		{
			type = 1
			pullstrength = 3;
			with Player
			{
				lockout = true;	
			}
			alarm[1] = 1;
		}
		with JungleFrozenPlant
		{
			used = true;	
		}
	}
}
