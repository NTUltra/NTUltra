/// @description Intro anim
spr_idle = spr_idle_actual;
spr_walk = spr_walk_actual;
sprite_index = spr_idle;
image_index = 0;
mask_index = mskAssassinBoss;
instance_create(x,y,WallBreak);
snd_play(sndAssassinPretend);