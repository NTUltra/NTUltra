/// @description Appear again
scrTarget();
if target != noone
{
	image_speed = 0.4;
	if target.x < x
		image_xscale = -1
    else if target.x > x
		image_xscale = 1
	right = image_xscale;
	mask_index = mskSandWormAppear;
	x = target.x;
	y = target.y;
	snd_play(sndBigMaggotUnburrow);
	snd_play(sndSandWormSpawn);
	spr_fire = spr_appear;
	sprite_index = spr_fire;
	image_index = 0;
	alarm[6] = image_number/image_speed;
	depth = -10;
	with instance_create(x,y,BigWallBreak) {
		image_xscale = other.image_xscale;
		mask_index = mskSandWormDig;
	}
	repeat(8)
	with instance_create(x,y,Dust) {
		motion_add(random(360),2+random(3));
	}
	
}
else
{
	alarm[5] = 2;	
}

alarm[1] += 90;
