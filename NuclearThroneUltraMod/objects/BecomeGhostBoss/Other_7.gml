/// @description GhostBoss
if !instance_exists(PitGhostBoss)
	instance_create(x,y + 32,PitGhostBoss);
var ang = random(360);
snd_play(sndGhostTeleport);
repeat(8)
{
	with instance_create(x,y,Smoke)
	{
		motion_add(ang,2);	
	}
	ang += 45;
}
instance_create(x,y,DramaCamera);
visible = false;
image_speed = 0;
alarm[2] = 0;
alarm[3] = 10;
alarm[4] = 15;