/// @description Sneak attack
if instance_exists(Player)
{
	image_alpha = 0;
	with instance_create(x,y,AnimDestroy)
	{
		sprite_index = sprCloudBossDisappear;
	}
	target = Player;
	y = Player.y + 96;
	x = Player.x;
	scrForcePosition60fps();
	alarm[5] = sneakTime + irandom(60);
	alarm[1] = alarm[5] + 20;
	mask_index = mskPickupThroughWall;
}
