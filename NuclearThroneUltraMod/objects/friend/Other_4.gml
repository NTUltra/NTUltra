/// @description xxx
visible = true;
persistent = false;
if isPermanent
	persistent = true;
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
	if Player.area == 137
		instance_deactivate_object(id);
	scrForcePosition60fps();
	speed = 0;
	walk = 0;
}
image_angle = 0;
alarm[4] = 10;
alarm[1] = 30;