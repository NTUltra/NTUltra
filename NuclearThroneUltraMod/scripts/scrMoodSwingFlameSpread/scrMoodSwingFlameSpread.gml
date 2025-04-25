///scrMoodSwingFlameSpread();
// /@description
///@param
function scrMoodSwingFlameSpread(range, wantDmg = 0,addDmg = 0){
	var burning = false;
	if instance_exists(enemy)
	{
		if instance_exists(Player) && Player.race == 25
			range += 8;
		var n = instance_nearest(x,y,enemy);
		if n != noone && point_distance(x,y,n.x,n.y) < range && !collision_line(x,y,n.x,n.y,Wall,false,false)
		{
			burning = true;
			var d = point_direction(x,y,n.x,n.y)
			var len = point_distance(x,y,n.x,n.y);
			var xx = x + lengthdir_x(len * 0.6,d);
			var yy = y + lengthdir_y(len * 0.6,d);
			var xxx = x + lengthdir_x(len * 0.3,d);
			var yyy = y + lengthdir_y(len * 0.3,d);
			with instance_create(xx,yy,MoodFlame)
			{
				if wantDmg != 0
					dmg = wantDmg;
				dmg += addDmg;
				xOrigin = other.x;
				yOrigin = other.y;
				team = 2;
				motion_add(d,2);	
			}
			with instance_create(xxx,yyy,Smoke)
			{
				motion_add(d,1);	
			}
		}
	}
	return burning;
}