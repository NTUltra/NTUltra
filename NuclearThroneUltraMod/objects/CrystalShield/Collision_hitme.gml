if !instance_exists(Player)
	exit;
if sprite_index == spr_disappear && image_index > fadeNumber
	exit;
if image_speed = 0 and other.team != team
other.direction = point_direction(x,y,other.x,other.y)
var mover = 5;
if UberCont.normalGameSpeed == 60
	mover = 2.5;
if(Player.ultra_got[8]==1)//Vengefull
{
	with other
	{
		if team != 2
			motion_add(direction,mover);
	}
}