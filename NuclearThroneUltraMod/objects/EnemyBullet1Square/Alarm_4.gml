/// @description Slowly accelerate
if addSpeed > 0
{
	addSpeed -= 1;
	speed += 0.5;
	alarm[4] = 2;
}