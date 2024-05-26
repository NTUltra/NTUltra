/// @description Check the speed
if speed < stopSpeed
{
	event_user(0);
}
else
{
	alarm[0] = 6;
}
if friction == 0
{
	friction = 0.05;
	speed += 2;
}
else
	friction += 0.01;