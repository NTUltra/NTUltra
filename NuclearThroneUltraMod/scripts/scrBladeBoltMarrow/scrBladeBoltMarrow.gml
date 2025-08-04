///scrBladeBoltMarrow();
// /@description
///@param
function scrBladeBoltMarrow(){
	if instance_exists(Player) and instance_exists(enemy)
	{
		var en = instance_nearest(x,y,enemy)
		if speed > 0 and Player.skill_got[21] and en != noone && en.team != team && point_distance(x,y,en.x,en.y) < 58 + (Player.betterboltmarrow*1.25)//52
		{
			var dire = point_direction(x,y,en.x,en.y);
			x += lengthdir_x(1.25 + speed*0.5,dire)
			y += lengthdir_y(1.25 + speed*0.5,dire)
		}
	}
}