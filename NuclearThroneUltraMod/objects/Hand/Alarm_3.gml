/// @description Fuck projectiles
if place_meeting(x,y,projectile)
{
	var projectiles = ds_list_create();
	var al = instance_place_list(x,y,projectile,projectiles,false)
	for (var j = 0; j < al; j++) {
		with projectiles[| j]
		{
			if (team != other.team && (typ == 1 || typ == 2))
			{
				instance_destroy();	
			}
		}
	}
	ds_list_destroy(projectiles);
}
alarm[3] = 1;
