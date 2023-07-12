/// @description Dead
event_inherited();
with creator
{
	acc -= speedBuff;
	maxSpeed -= speedBuff;
	projectileSpeed -= speedBuff*0.5;
	actTime += speedBuff;
}