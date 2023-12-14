/// @description Charge end
snd_play(sndBigMaggotUnburrowSand);
mask_index = mskSandWorm;
sprite_index = spr_idle;
depth = -2;
with instance_create(x,y,BigWallBreak) {
	mask_index = mskSandWormDig;
}
repeat(8)
	with instance_create(x,y,Dust) {
		motion_add(random(360),2+random(3));
	}
alarm[1] = actTime;
if (!hasStarted)
{
	hasStarted = true;
	instance_create(x,y,DramaCamera);
	if instance_exists(Player) && Player.skill_got[29] {
		alarm[1] += 60;
		with instance_create(x,y,Snooze)
		{
			owner = other.id;
			yoffset = other.sprite_height*0.5 - 4;
		}
	}
}