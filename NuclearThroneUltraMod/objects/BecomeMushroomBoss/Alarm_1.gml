/// @description Spawn a buddy
alarm[1] = 90;
if instance_exists(Player) && point_distance(x,y,Player.x,Player.y) < 160
{
	instance_create(x,y,BuddyShroom);
}