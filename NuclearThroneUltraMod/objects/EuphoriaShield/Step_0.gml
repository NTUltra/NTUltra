if instance_exists(owner)
{
	x=owner.x;
	y=owner.y;
	if owner.myShield != id || owner.alarm[3] < 1
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