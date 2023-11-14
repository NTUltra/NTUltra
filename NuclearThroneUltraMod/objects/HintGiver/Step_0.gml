/// @description Torch dead?
if !instance_exists(owner) {
	if alarm[5] > 0 && instance_exists(Torch)
	{
		var n = instance_nearest(x,y,Torch)
		if n != noone
		{
			owner = n;
			x = owner.x;
			y = owner.y;
			with owner {
				maxhealth = 100;
				my_health = 100;	
			}
		}
		else
			instance_destroy();
	}
	else
		instance_destroy();
}