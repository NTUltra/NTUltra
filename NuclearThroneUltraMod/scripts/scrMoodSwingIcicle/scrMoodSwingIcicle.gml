///scrMoodSwingIcicle();
// /@description
///@param
function scrMoodSwingIcicle(am, hitTarget){
	if hitTarget != noone && instance_exists(hitTarget) && hitTarget.team == 2
		exit;
	var angStep = 360/am;
	var ang = random(360);
	if instance_exists(enemy)
	{
		var n = noone;
		if instance_exists(hitTarget) && hitTarget != noone
			n = instance_nearest_not_instance(x,y,enemy,hitTarget);
		else
			n = instance_nearest(x,y,enemy);
		if n.team != 2 && n.my_health > 0 && !collision_line(x,y,n.x,n.y,Wall,false,false)
		{
			ang = point_direction(x,y,n.x,n.y);	
		}
	}
	repeat(am)
	{
		with instance_create(x,y,FrostIcicle)
		{
			ignoreMe = hitTarget;
			motion_add(ang,24)
			image_angle = direction
			team = other.team
			frostDamage = clamp(am - 1,0,floor(am * 0.5));
		}
		ang += angStep;
	}
}