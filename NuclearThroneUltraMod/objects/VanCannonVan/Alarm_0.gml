/// @description Check speed
alarm[0] = 2;

BackCont.shake += 2
if instance_exists(Player)
{
	if point_distance(x,y,Player.x,Player.y) > 300
		speed -= 1;
	//EYES PROJECTILE STYLE FUN FUN
	if Player.ultra_got[9] == 1 && (KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2)
	{
		exit
	}
}
if speed < 2
	instance_destroy();
