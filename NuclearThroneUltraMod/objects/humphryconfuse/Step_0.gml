/// @description Confusion
with myEnemy
{
	speed = 0;
	x = xprevious + (x - xprevious)*0.25;
	y = yprevious + (y - yprevious)*0.25;
	other.x = x;
	other.y = y-8;
}