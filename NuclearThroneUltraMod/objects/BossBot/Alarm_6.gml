/// @description We Bowlin' end
spr_walk = spr_actual_walk;
spr_idle = spr_actual_idle;
spr_hurt = spr_actual_hurt;
sprite_index = spr_idle;
spr_chrg = false;
meleedamage = 0;
image_angle = 0;
alarm[7] = 0;
mask_index = mskBossBot;
var walls = ds_list_create();
var al = instance_place_list(x,y,Wall,walls,false)
for (var i = 0; i < al; i++) {
	instance_create(walls[| i].x,walls[| i].y,FloorExplo)
	instance_destroy(walls[| i]);
}
ds_list_destroy(walls);
instance_create(x,y,DramaCamera);