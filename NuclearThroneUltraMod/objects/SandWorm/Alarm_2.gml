/// @description Start looping disappear
spr_fire = spr_disappear_loop;
spr_idle = spr_disappear_loop;
spr_walk = spr_disappear_loop;
spr_hurt = spr_disappear_hurt;
mask_index = mskSandWormDisappear;
alarm[3] = disappearDuration;
alarm[7] = 5; //ATTACK
sprite_index = spr_fire;
image_index = 0;
alarm[1] += 90;
snd_play(sndBigMaggotBite);
repeat(8)
	with instance_create(x + (xOffset*image_xscale),y,Dust) {
		motion_add(random(360),2+random(3));
	}