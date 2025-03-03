/// @description Slowly angle
if !instance_exists(target) || target == noone
	instance_destroy();
with target
{
	if wep != other.wep
	{
		with other
		{
			instance_destroy();	
		}
	}
	wepangle = lerp(other.wepangle,other.wepangleTarget,other.lerpTime);	
}
lerpTime = clamp(lerpTime + 1/time,0,1);