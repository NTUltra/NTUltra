/// @description BLOCK!
with other
{
	if team != 2 && (typ != 0)
	{
	if isGrenade
		instance_destroy(id,false);
	else
		instance_destroy();
	}
}