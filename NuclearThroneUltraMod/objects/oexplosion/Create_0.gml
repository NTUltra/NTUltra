event_inherited();
typ = 3;
image_speed = 0.4
dmg = 5;
team = 2;
if instance_exists(Player){
if Player.ultra_got[28]//roids ultra d
{dmg +=2;}}
HumphryHit=0;//unassigned 0=miss 1=hit 2=dont count as either
Humphry=false;//gets assigned true when playing as humphry and firing
HumphryNr=0;
alarm[1] = 1;