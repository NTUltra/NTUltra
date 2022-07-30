instance_create(x,y,InvertedJungleBoss)

repeat(12)
{
	var dir = random(360);
	var dis = random_range(4,12);
	var xx = x+lengthdir_x(dis,dir);
	var yy = y+lengthdir_y(dis,dir);
	with instance_create(xx,yy,Leaf)
	{
		depth = other.depth;
	}
}
