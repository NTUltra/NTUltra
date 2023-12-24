///scrPushOffWepPickup();
// /@description
///@param
function scrPushOffWepPickup(){
	var w = instance_nearest(x,y,WepPickup);
	var range = 40;
	if w != noone && point_distance(x,y,w.x,w.y) <= range
	{
		with w {
			vspeed += 0.1;
			if speed < 4
				motion_add(direction,2);	
		}
	}
	alarm[6] = 1;
}