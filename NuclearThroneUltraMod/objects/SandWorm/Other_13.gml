/// @description Turnaround attack
snd_play(sndSandWormSpit);
var ang = 0;
if image_xscale < 0
	ang = 180;
var ps = 5;
repeat(4)
{
	with instance_create(x + (xOffset*image_xscale),y-yOffset,Maggot)
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