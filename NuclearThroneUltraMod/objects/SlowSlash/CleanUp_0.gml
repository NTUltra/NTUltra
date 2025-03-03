/// @description correct weapon angle
if instance_exists(target) && target != noone
	with target
	{
		wepangle = other.wepangleTarget;
	}