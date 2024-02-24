///scrBladeBoltMarrow();
// /@description
///@param
function scrBladeBoltMarrow(){
	if instance_exists(Player) and instance_exists(enemy)
	{
		dir = instance_nearest(x,y,enemy)
		if speed > 0 and Player.skill_got[21] and dir.team != team && point_distance(x,y,dir.x,dir.y) < 58 + (Player.betterboltmarrow*1.25)//52
		{
			var dire = point_direction(x,y,dir.x,dir.y);
			x += lengthdir_x(1 + speed*0.5,dire)
			y += lengthdir_y(1 + speed*0.5,dire)
		}
	}
}