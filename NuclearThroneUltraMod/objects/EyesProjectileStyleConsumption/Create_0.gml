/// @description Suck up nearby player projectiles:
if instance_exists(Player)
{
	var counterProjectiles = ds_list_create();
	var counteral = instance_place_list(x,y,projectile,counterProjectiles,false);
	for (var cindex = 0; cindex < counteral; cindex++) {
		with counterProjectiles[| cindex] {
			if team == Player.team
			{
				if canBeMoved {
					if sprite_width + sprite_height <= 48
					{
						if isGrenade
							instance_destroy(id, false);	
						else
							instance_destroy();
					} else {
						image_xscale *= 0.9;
						image_yscale *= 0.9;
						image_xscale -= 0.1;
						image_yscale -= 0.1;
					}
				}
				else if isGrenade
					instance_destroy(id, false);	
				else
					instance_destroy();
			}
		}
	}
	ds_list_destroy(counterProjectiles);
}
instance_destroy();