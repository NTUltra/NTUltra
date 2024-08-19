/// @description Accelerate
if speed < maxProjectileSpeed
{
	speed += 0.5;
	targetSpeed = speed;
	alarm[4] = 2;
}
else
{
	speed = maxProjectileSpeed;	
}