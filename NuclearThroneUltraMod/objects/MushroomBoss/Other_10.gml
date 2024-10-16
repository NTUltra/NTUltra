/// @description Close range toxic spawm / buddy healing
forceAnimation = spr_fire;
event_user(14);
snd_play(sndBigMushroomBossSpray,0.05);
sprite_index = spr_fire;
image_index = 0;
alarm[2] = max(1,(animationDuration/image_speed) - 1);
alarm[1] += alarm[2];