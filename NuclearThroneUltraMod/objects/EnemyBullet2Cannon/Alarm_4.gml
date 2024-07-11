/// @description Accelerate
if speed < maxProjectileSpeed
{
	speed += 0.5;
	alarm[4] = 2;
}
else
{
	speed = maxProjectileSpeed;	
}