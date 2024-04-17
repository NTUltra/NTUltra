/// @description Intestines!
if instance_exists(creator)
{
	x = creator.x;
	y = creator.y;
	with creator {
		scrAlienIntestinesAttack();
		alienIntestines = 0;
		alienDir *= -1;
	}
	instance_destroy();
}