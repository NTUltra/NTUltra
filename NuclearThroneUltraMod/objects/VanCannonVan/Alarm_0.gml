/// @description Check speed
alarm[0] = 2;

BackCont.shake += 2
if instance_exists(Player)
{
	//EYES PROJECTILE STYLE FUN FUN
	if Player.ultra_got[9] == 1 && (KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2)
	{
		exit
	}
}
if speed < 2
	instance_destroy();
