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
if place_meeting(x,y,PopoNade)
{
	var nades = ds_list_create();
	var al = instance_place_list(x,y,PopoNade,nades,false)
	for (var j = 0; j < al; j++) {
		with nades[| j]
		{
			if (team != other.team)
			{
				instance_destroy(id,false);	
			}
		}
	}
	ds_list_destroy(nades);
}
alarm[3] = 1;
