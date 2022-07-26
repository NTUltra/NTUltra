/// @description Be sure projectile be gone
with projectile
{
	if team != 2
	{
		instance_destroy(id,false);	
	}
}