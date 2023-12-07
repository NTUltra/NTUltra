/// @description Turnaround attack
snd_play(sndSandWormSpit);
var ang = 0;
if image_xscale < 0
	ang = 180;
var ps = 5;
scrDrop(5,0);
repeat(5)
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
	}
	ps ++;
}
hspeed += image_xscale * -1;