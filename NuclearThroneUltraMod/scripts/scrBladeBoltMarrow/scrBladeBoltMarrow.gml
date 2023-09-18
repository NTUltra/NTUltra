///scrBladeBoltMarrow();
// /@description
///@param
function scrBladeBoltMarrow(){
	if instance_exists(Player) and instance_exists(enemy)
	{
		dir = instance_nearest(x,y,enemy)
		if speed > 0 and Player.skill_got[21] and point_distance(x,y,dir.x,dir.y) < 58 + (Player.betterboltmarrow*1.25)//52
		{
			x += lengthdir_x(speed*0.5,point_direction(x,y,dir.x,dir.y))//normal speed = 12
			y += lengthdir_y(speed*0.5,point_direction(x,y,dir.x,dir.y))
		}
	}
}