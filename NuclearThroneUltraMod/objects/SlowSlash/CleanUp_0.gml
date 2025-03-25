/// @description correct weapon angle
if instance_exists(target) && target != noone
	with target
	{
		if wepangle != 0
			wepangle = other.wepangleTarget;
	}