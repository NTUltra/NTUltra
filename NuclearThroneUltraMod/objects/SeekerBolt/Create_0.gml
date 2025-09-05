event_inherited();
friction=0.2;
//friction = 0.6
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable

theColour = c_white;
target=0;

dmg = 9;
ee = false
bm = false;
constAcc = 0.8;
maxSpeed = 6;
acc = 1;
bm = 0;
ee = 0
if instance_exists(Player){
	if Player.skill_got[21] = 1//bolt marrow
	{
		bm = 1;
		if Player.ultra_got[97] && !Player.altUltra
			bm += 0.5;
		dmg ++;
		friction+=0.1;
	}
	if Player.skill_got[19] {
		ee = 1;
	}

alarm[0]=4

}
alarm[1] = 1;
alarm[11] = 1;
xprev = x;
yprev = y;
alarm[3] = 120;