/// @description BLOCK!
with other
{
	if team != 2 && (canBeMoved && !isLaser)
	{
		if isGrenade
			instance_destroy(id,false);
		else
			instance_destroy();
	}
}