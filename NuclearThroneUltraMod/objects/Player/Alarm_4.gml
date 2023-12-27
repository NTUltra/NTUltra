/// @description boiling veins indication
if boil > 0
{
	instance_create(x+random(12)-6,y+random(12)-6,Smoke);
	alarm[4] = 2;
	boil -= 1;
}
else
{
	boil = 10;	
}