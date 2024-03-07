///scrMoodSwingIcicle();
// /@description
///@param
function scrMoodSwingIcicle(am, hitTarget){
	if hitTarget != noone && instance_exists(hitTarget) && hitTarget.team == 2
		exit;
	var angStep = 360/am;
	var ang = random(360);
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