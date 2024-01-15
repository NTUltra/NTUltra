event_inherited();
friction=0.2;
//friction = 0.6
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable

dmg = 2;
target=0;

hits=choose(1,2);
mxSpd = 4;
eagleEyed = 0;
boltMarrowed = 0;
if instance_exists(Player){
if Player.skill_got[21] = 1//bolt marrow
{
	boltMarrowed = 1;
	hits = 2;
	mxSpd +=2;
	if Player.race == 25
		mxSpd += 0.2;
	if Player.betterboltmarrow > 0
		mxSpd ++;
	friction+=0.1;
}
if Player.skill_got[19]//eagle eyes
{
	eagleEyed = 1;
mxSpd+=1;
friction+=0.05;
}

alarm[0] = 5
}
alarm[1] = 120;
alarm[11] = 1;
alarm[2] = 1;
xprev = x;
yprev = y;
