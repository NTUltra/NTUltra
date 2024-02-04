/// @description ProjectileDestroy
if image_index < image_number - 2
{
	var ii = image_index;
	image_index = 1;//Big cirlce
	var projectiles = ds_list_create();
	var al = instance_place_list(x,y,projectile,projectiles,false);
	for ( var i = 0; i < al; i ++)
	{
		with projectiles[| i]
		{
			if team != 2 && team != other.team
			{
				if (typ = 1 or typ = 2)
				{
					if isGrenade
						instance_destroy(id,false);
					else
						instance_destroy();
						
					snd_play(sndProjectileDestroy,0.1,true);
					with instance_create(x,y,Notice)
					{
						image_speed = 0.4;
						sprite_index = sprHumphryDestroyProjectile;	
					}
				}
				else if typ == 3
				{
					x = xprevious;
					y = yprevious;
				}
			}
		}
	}
	ds_list_destroy(projectiles);
	image_index = ii;
}
