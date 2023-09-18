if !instance_exists(Player)
	exit;
if sprite_index == spr_disappear && image_index > fadeNumber
	exit;
if image_speed = 0 and other.team != team
other.direction = point_direction(x,y,other.x,other.y)
if(Player.ultra_got[8]==1)//Vengefull
{
with other
{
if object_index!=Player
	motion_add(direction,5);
}
}