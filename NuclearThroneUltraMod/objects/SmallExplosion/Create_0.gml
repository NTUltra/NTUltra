event_inherited();
image_speed = 1;

repeat(3)
{
with instance_create(x,y,Smoke)
motion_add(random(360),1+random(2))
}

ang = random(360)
repeat(5)
{
with instance_create(x,y,Dust)
motion_add(other.ang,6)

ang += 360/20
}


BackCont.shake += 2;

team = -1
if instance_exists(Player){
if Player.ultra_got[57]//atom bomb
{
instance_create(x+random(32)-16,y+random(32)-16,ExplosionStop);}}

dmg=4;

HumphryHit=0;//unassigned 0=miss 1=hit 2=dont count as either
Humphry=false;//gets assigned true when playing as humphry and firing
HumphryNr=0;
