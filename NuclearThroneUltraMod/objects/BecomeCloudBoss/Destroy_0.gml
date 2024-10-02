/// @description Spawn the boss
if sprite_index == sprInvertedCloudBoss
	instance_create(x,y,InvertedCloudBoss);
else
	instance_create(x,y,CloudBoss);