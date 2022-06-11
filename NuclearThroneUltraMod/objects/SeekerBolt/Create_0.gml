event_inherited();
friction=0.2;
//friction = 0.6
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable


target=0;

dmg = 9;
ee = false
bm = false;
if instance_exists(Player){
	if Player.skill_got[21] = 1//bolt marrow
	{
		bm = true;
		dmg ++;
		friction+=0.1;
	}
	if Player.skill_got[19] {
		ee = true;	
	}

alarm[0]=4

}


alarm[11] = 1;