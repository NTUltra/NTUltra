/// @description Normal attack maggots fired
if target != noone
{
	spr_fire = spr_fire_simple;
	sprite_index = spr_fire;
	image_index = 0;
	with instance_create(x,y,BigWallBreak) {
		image_xscale = other.image_xscale;
		mask_index = mskSandWormDig;
	}
	snd_play(sndSandWormSpit);
	var ang = point_direction(x+(xOffset*image_xscale),y-yOffset,target.x,target.y);
	var ps = 5;
	repeat(4)
	{
		with instance_create(x + (xOffset*image_xscale),y-yOffset,myMaggot)
		{
			ignoreOverlap = true;
			raddrop = 0;
			countKill = false;
			motion_add(ang+(random(16)-8),ps)
			image_angle = direction
			team = other.team
			charge = true;
			existTime = 30;
			wasResurrected = true;
			alarm[1] = 0;
			if instance_exists(Player) && Player.skill_got[29] {
				alarm[1] = 60
				charge = false;
				scrGiveSnooze();
				speed = 1;
				image_angle = 0;
			}
		}
		ps ++;
	}
}