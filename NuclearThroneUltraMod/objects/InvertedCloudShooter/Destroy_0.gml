/// @description More weapons

if instance_number(WepPickup) < 2
{
	scrDropNearby(0,100);
}
else
{
	scrDropNearby(40,20);
}
event_inherited();