/// @description Destroy Projectiles
alarm[0] = 1;
var projs = ds_list_create();
var al = instance_place_list(x,y,projectile,projs,false);
for(var i = 0; i < al; i ++)
{
	with projs[| i]
	{
		if team != 2
		{
			if isGrenade
				instance_destroy(id,false);
			else
				instance_destroy();
		}
	}
}
ds_list_destroy(projs);