event_inherited();
friction=0.2;
//friction = 0.6
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable

dmg = 2;
target=0;

hits=2;
mxSpd = 4;
if instance_exists(Player){
if Player.skill_got[21] = 1//bolt marrow
{
hits+=1;
mxSpd +=2;
if Player.race == 25
	mxSpd += 0.2;
if Player.betterboltmarrow > 0
	mxSpd ++;
friction+=0.1;
}
if Player.skill_got[19]//eagle eyes
hits+=1;

alarm[0]=6
}

alarm[11] = 1;
