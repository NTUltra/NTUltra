/// @description
function scrMoodSwingToxicBullet(xx,yy, damage, dir = direction){
	var n = instance_nearest(xx,yy,enemy)
	if n != noone && n.team != 2
	{
		var range = 12;
		if isDoc 
			range*= 2;
		var td = point_direction(xx,yy,n.x,n.y);
		if abs(angle_difference(dir,td)) < range
		{
			dir = td;
		}
	}
	with instance_create(xx,yy,ToxicConvertedBullet) {
		dmg = damage;
		direction = dir;
		image_angle = direction;
		direction = image_angle;
		speed = 16;
		team = 2;
	}
}