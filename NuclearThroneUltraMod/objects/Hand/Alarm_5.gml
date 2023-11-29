/// @description Fuck up walls
//instance_create(x,y,WallBreak);
alarm[5] = 1;
image_xscale = 1.5;
image_yscale = 1.5;
var walls = ds_list_create();
var al = instance_place_list(x,y,Wall,walls,false)
for (var j = 0; j < al; j++) {
	with walls[| j]
	{
		instance_destroy(id,false);
		instance_create(x,y,FloorExplo);
	}
}
ds_list_destroy(walls);
image_xscale = 1;
image_yscale = 1;