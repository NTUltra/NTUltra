/// @description Destroys walls
var walls = ds_list_create();
var wAll = instance_place_list(x,y,Wall,walls,false)
for (var k = 0; k < wAll; k++) {
	with instance_create(walls[| k].x,walls[| k].y,FloorExplo)
	{
		canSpawnSwarm = true;
	}
	instance_destroy(walls[| k]);
}
ds_list_destroy(walls);
alarm[0] = 1;