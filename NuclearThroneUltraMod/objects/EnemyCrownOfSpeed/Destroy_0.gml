/// @description Dead
event_inherited();
with creator
{
	acc -= speedBuff;
	maxSpeed -= speedBuff;
	projectileSpeed -= 1;
	actTime += speedBuff;
}