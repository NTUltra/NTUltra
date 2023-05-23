/// @description More splosions
if instance_exists(Player)
	scrCrownOfDeath(2, 24);
	
with instance_create(x,y,BigScorchMark) {
	alarm[0] = 0;
	sprite_index = sprSmallScorchMark;
}