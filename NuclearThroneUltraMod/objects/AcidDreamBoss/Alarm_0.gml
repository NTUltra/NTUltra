/// @description
alarm[0] = 90;
if instance_exists(Player)
	if instance_number(enemy) < 20 || point_distance(x,y,Player.x,Player.y) > 384
	{
		instance_create(x,y,ChesireCat);
		instance_create(x,y,DreamBossIntro);
		instance_destroy();
	}