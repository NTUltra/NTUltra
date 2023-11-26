repeat(8)
{
	with instance_create(x+random(8)-4,y+random(8)-4,MaggotInverted)
	{
		existTime = 30;
		wasResurrected = true;
	}
}
