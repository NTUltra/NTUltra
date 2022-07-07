Mod1=0;
Mod2=0;
Mod3=0;
Mod4=0;
hadSpeedApplied = false;
dmg = 0;
team = 2;
HumphryHit=0;//unassigned 0=miss 1=hit 2=dont count as either
Humphry=false;//gets assigned true when playing as humphry and firing
HumphryNr=0;
canBeMoved = true;
typ = 0;
if UberCont.opt_gamemode == 33//All Deflector
{
	hasBeenDeflected = false;
	alarm[7] = 1;
}
/*WEAPON MODS
mod1[]
mod2[]
mod3[]
0 nothing
1 toxic
2 explosive
3 flame
4 frost
5 blood
6 lightning
*/

/* */
/*  */
