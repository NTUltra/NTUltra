/// @description xxx
visible = true;
persistent = false;
if isPermanent
	persistent = true;
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
}
image_angle = 0;
alarm[4] = 10;