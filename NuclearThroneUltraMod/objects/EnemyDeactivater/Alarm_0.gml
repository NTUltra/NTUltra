/// @description Remove enemies again
if instance_exists(myEnemy)
{
	instance_deactivate_object(myEnemy);
}
alarm[0] = 2;