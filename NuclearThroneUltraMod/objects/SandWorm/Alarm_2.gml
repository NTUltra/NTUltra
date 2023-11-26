/// @description Start looping disappear
spr_fire = spr_disappear_loop;
spr_idle = spr_disappear_loop;
spr_walk = spr_disappear_loop;
spr_hurt = spr_disappear_hurt;
mask_index = mskSandWormDisappear;
alarm[3] = 60;
alarm[7] = 5; //ATTACK
sprite_index = spr_fire;
image_index = 0;
alarm[1] += 90;
snd_play(sndBigMaggotBite);