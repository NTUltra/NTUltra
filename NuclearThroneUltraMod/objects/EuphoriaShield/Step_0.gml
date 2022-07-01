if instance_exists(owner)
{
	x=owner.x;
	y=owner.y;
	if owner.myShield != id
	{
		with owner.myShield
		{
			image_index = other.image_index;	
		}
		instance_destroy();
	}
}
else{
	instance_destroy();
}