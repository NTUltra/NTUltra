/// @description GhostBoss
if !instance_exists(PitGhostBoss)
	instance_create(x,y - 8,PitGhostBoss);
var ang = random(360);
snd_play(sndGhostTeleport2);
repeat(8)
{
	with instance_create(x,y,Smoke)
	{
		motion_add(ang,2);	
	}
	ang += 45;
}
with TopCont
{
	if !scrIsCrown(19)
	{
		darkness = 2;
		if ((instance_exists(Player) && Player.race == 3) || (instance_exists(PlayerSpawn) && PlayerSpawn.race == 3))
		{
			darkness = 0;	
		}
	}
}
instance_create(x,y,DramaCamera);
visible = false;
image_speed = 0;
alarm[2] = 0;
alarm[3] = 10 + 4;
alarm[4] = 16 + 4;
alarm[5] = 13 + 4;