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
instance_create(x,y,DramaCamera);