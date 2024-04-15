
event_inherited()
scrDrop(15,0)
if (!sleeping && existTime > 20)
{
	with instance_create(x,y,LavaBallEnemyExplode)
	{
		speed = other.speed * 0.5;
		direction = other.direction;
		projectileSpeed = other.projectileSpeed;
		team = other.team;
	}
}