/// @description BLOCK!
with other
{
	if team != 2 && (typ != 0 && typ != 4)
	{
	if isGrenade
		instance_destroy(id,false);
	else
		instance_destroy();
	}
}