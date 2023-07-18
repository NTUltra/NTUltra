if sprite_index = sprBigMaggotBurrow
{
	if visible = 1
		alarm[0] = 30+random(30)
		visible = 0
}
else
{
	//instance_change(BigMaggot,false)
	instance_destroy();
	with instance_create(x,y,BigMaggot)
	{
		my_health = other.my_health;	
	}
}

