/// @description Duplicate enemies
snd_play(sndCrownBlood);
instance_destroy();
with instance_create(x,y,EnemyDuplicater) {
	ds_list_add(copiedEnemies,other.creator);
}