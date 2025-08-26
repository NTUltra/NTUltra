image_speed = 0
depth = 8;

if scrIsGamemode(10) || (instance_exists(UberCont) && !UberCont.unlocked_alt_routes)// || scrHasNeverEnteredVoid()
{
	instance_destroy(id,false);
	exit;
}
alarm[0]=120;
name = "CURRENTLY UNAVAILABLE"
if UberCont.hasBeenInVoid
{
	alarm[2] = 120;
	image_index = 1;
	name = "KILL ALL ENEMIES FIRST"
}
alarm[6] = 120;
wentIn = false;