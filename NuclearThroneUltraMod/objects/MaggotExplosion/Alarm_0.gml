repeat(6)
{
	
	with instance_create(x+random(8)-4,y+random(8)-4,Maggot)
	{
		wasResurrected = true;
		existTime = 30;
	}
}
