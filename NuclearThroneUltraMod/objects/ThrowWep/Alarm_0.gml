/// @description auto return auto destroy
if instance_exists(PandaSleep)
{
	alarm[0] = 5;
	exit;
}
instance_destroy();