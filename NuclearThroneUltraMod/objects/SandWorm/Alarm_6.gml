/// @description Charge end
snd_play(sndBigMaggotUnburrowSand);
mask_index = mskSandWorm;
sprite_index = spr_idle;
depth = -2;
var walls = ds_list_create();
var al = instance_place_list(x,y,Wall,walls,false)
for (var i = 0; i < al; i++) {
	instance_create(walls[| i].x,walls[| i].y,FloorExplo)
	instance_destroy(walls[| i]);
}
alarm[1] = actTime;
if (!hasStarted)
{
	hasStarted = true;
	instance_create(x,y,DramaCamera);
}