/// @description alpha increase
if (comingIn)
{
	alpha = min(0.4, alpha + 0.13);
}
else
{
	alpha -= 0.1;
	if (alpha <=0)
		instance_destroy();
}
with projectile
{
	if (team != 2 && canBeMoved
	&& x > other.x - 170 && x < other.x + 170 && y > other.y - 130 && y < other.y + 130)
	{
		if canBeMoved {
			x = xprevious;
			y = yprevious;
			//scrForcePosition60fps();
		}
	}
}