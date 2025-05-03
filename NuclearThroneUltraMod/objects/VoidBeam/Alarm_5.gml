/// @description Break walls
alarm[5] = 6 - min(5,round(image_yscale * 2));
var walls = ds_list_create();
var al = min(5,instance_place_list(x,y,Wall,walls,false))
for (var i = 0; i < al; i++) {
	with instance_create(walls[| i].x,walls[| i].y,FloorExplo)
		canSpawnSwarm = true;
	instance_destroy(walls[| i]);
}
ds_list_destroy(walls);
instance_create(targetX,targetY,SmallWallBreak);