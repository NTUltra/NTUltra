/// @description Clear more walls
var walls = ds_list_create();
var al = instance_place_list(x,y,Wall,walls,false)
for (var i = 0; i < al; i++)
{
	with walls[| i] {
		instance_destroy();
		instance_create(x,y,FloorExplo);
	}
}