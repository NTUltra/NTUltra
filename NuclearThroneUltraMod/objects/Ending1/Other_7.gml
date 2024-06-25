/// @description Transition from
if sprite_index == sprDeskIdleTrans
{
	image_speed = 0.4;
	sprite_index = sprDeskIdleTurn;
	image_index = 0;
}
else if sprite_index == sprDeskIdleTurn
{
	image_speed = 0;
	image_index = image_number - 1;
}