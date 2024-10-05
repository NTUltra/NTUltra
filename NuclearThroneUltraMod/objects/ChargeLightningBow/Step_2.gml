if instance_exists(creator)
{
	x=creator.x;
	y=creator.y;
}

if instance_exists(Player){
	//if theres you are not holding the fire button
	if scrChargeRelease()
	{
		instance_destroy();
	}
}


