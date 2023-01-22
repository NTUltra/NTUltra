/// @description prevent elite enemy spawning new enemies.
image_xscale = 3;
image_yscale = 3;
var enemies = ds_list_create();
var amountOfenemies = instance_place_list(xstart,ystart,enemy,enemies,false);
if amountOfenemies > 0
{
	for (var i = 0; i < amountOfenemies; i++) {
		with enemies[| i] {
			if existTime < 25
			{
				wasResurrected = true;
				var hitWalls = ds_list_create();
				var amountOfWalls = instance_place_list(x,y,Wall,hitWalls,false);
				if amountOfWalls > 0
				{
					while(amountOfWalls > 0)
					{
						for (var i = 0; i < amountOfWalls; i++) {
							with hitWalls[| i] {
								instance_destroy();
								instance_create(x,y,FloorExplo);
							}
						}
						ds_list_clear(hitWalls);
						amountOfWalls = instance_place_list(x,y,Wall,hitWalls,false);
					}
				}
				ds_list_destroy(hitWalls);
			}
		}
	}
}
ds_list_destroy(enemies);

instance_destroy();