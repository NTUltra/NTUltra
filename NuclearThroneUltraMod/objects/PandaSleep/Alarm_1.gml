/// @description Show a snooze sprite a little later
with instance_create(x,y,Snooze)
{
	alarmIndex = 0;
	owner = other.id;
	yoffset = 8;
}