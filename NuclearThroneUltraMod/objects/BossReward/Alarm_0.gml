/// @description Init can be collected?
if array_contains(UberCont.collectedRewards, myBoss)
{
	sprite_index = sprBossHolderDead;
	image_speed = 0;
	image_index = image_number-1;
	active = false;
}
else if array_contains_get_index(UberCont.killedBoss, myBoss) != -1
{
	event_user(0);	
}
