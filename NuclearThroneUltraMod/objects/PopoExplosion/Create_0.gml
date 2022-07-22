image_speed = 0.4

repeat(10)
{
with instance_create(x,y,Smoke)
motion_add(random(360),1+random(2))
}

ang = random(360)
repeat(20)
{
with instance_create(x,y,Dust)
motion_add(other.ang,6)

ang += 360/20
}


BackCont.shake += 7

team = 3

dmg = 8;
if UberCont.opt_gamemode == 9
	dmg = 4;
else if UberCont.opt_gamemode == 34//HARD MODE
	dmg = 10;

Humphry=false;//gets assigned true when playing as humphry and firing
HumphryNr=0;
HumphryHit=0;

