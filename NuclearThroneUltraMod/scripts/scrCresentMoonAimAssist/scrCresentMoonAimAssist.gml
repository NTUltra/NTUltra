///scrCresentMoonAimAssist();
// /@description
///@param
function scrCresentMoonAimAssist(originalDirection){
	var aimAssist = 14;
	with Player
	{
		if skill_got[19] == 1//Eagle eyes
		aimAssist += 12;
		if ultra_got[42]==1//Never miss
		{
			aimAssist += 60;
		}
	}
	var len = 48;
	var t = instance_nearest(x + lengthdir_x(len,originalDirection),y + lengthdir_y(len,originalDirection),enemy);
	if (collision_line(x,y,t.x,t.y,Wall,false,true) < 0)
	{
		var wantD = point_direction(x,y,t.x,t.y);
		//Check the angle difference
		if abs(angle_difference(wantD,originalDirection)) < aimAssist
		{
			return wantD;
		}
		return originalDirection;
	}
	return originalDirection;
}