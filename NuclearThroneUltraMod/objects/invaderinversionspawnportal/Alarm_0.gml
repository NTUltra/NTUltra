/// @description Prepare to spawn
if !instance_exists(Player)
	alarm[0] = 20;

	BackCont.shake += 10;

snd_play(sndPortalOpen);
scrBossFloor();
visible = true;
image_speed = 0.4;
image_index = 0;
instance_create(x + 32,y + 32,BigWallBreak);
instance_create(x,y + 32,BigWallBreak);
instance_create(x + 32,y,BigWallBreak);
instance_create(x - 32,y - 32,BigWallBreak);
instance_create(x,y - 32,BigWallBreak);
instance_create(x - 32,y,BigWallBreak);
instance_create(x,y,BigWallBreak);
instance_create(x - 32,y + 32,BigWallBreak);
instance_create(x + 32,y - 32,BigWallBreak);

if instance_number(InvaderBossSpawnPortal) < 3
{
	instance_create(x + 64,y + 64,BigWallBreak);
	instance_create(x,y + 64,BigWallBreak);
	instance_create(x + 64,y,BigWallBreak);
	instance_create(x - 64,y - 64,BigWallBreak);
	instance_create(x,y - 64,BigWallBreak);
	instance_create(x - 64,y,BigWallBreak);
	instance_create(x,y,BigWallBreak);
	instance_create(x - 64,y + 64,BigWallBreak);
	instance_create(x + 64,y - 64,BigWallBreak);
}
alarm[1] = 15;

