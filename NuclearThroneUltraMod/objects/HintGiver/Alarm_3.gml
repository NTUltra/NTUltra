/// @description Hinting
if hasASecret
{
	alarm[3] = 60;
	exit;
}
sprite_index = spr_deactivate;
alarm[1] = 0;
alarm[2] = 0;
alarm[4] = 0;
active = false;
with owner
{
	maxhealth = 20
	my_health = min(my_health,20);
}