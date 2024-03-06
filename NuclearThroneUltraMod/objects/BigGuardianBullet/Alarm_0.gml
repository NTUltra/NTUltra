/// @description Check the speed
if speed < stopSpeed
{
	event_user(0);
}
else
{
	alarm[0] = 4;
}
if friction == 0
{
	friction = 0.1;
	speed += 0.2;
}
else
	friction += 0.01;