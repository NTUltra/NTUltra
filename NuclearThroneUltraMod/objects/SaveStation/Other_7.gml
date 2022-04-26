/// @description xxx
if sprite_index == sprSaveStationSpawn
{
	active = true;
	image_index = 0;
	sprite_index = sprSaveStationIdle;
}
else if sprite_index == sprSaveStationSave
{
	image_speed = 0;
	image_index = image_number - 1;
	
}
