image_speed = 0
depth = 8;

if scrIsGamemode(10) || (instance_exists(UberCont) && !UberCont.unlocked_alt_routes)
{
	instance_destroy(id,false);
	exit;
}
alarm[0]=120;

name = "JUMP IN?"
alarm[6] = 120;
wentIn = false;
