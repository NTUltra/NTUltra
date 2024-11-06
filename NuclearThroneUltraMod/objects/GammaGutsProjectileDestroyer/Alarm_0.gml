/// @description Lifetime
instance_destroy();
with SquarePool
{
	if point_distance(x,y,other.x,other.y) < 48
		instance_destroy();
}