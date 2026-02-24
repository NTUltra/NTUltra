/// @description Spawn the boss
if sprite_index == sprInvertedCloudBoss
	instance_create(x,y,InvertedCloudBoss);
else
	instance_create(x,y,CloudBoss);
if instance_exists(MimicBossPlateau)
	with CloudBoss
	{
		xstart = MimicBossPlateau.x;	
		ystart = MimicBossPlateau.y;	
	}