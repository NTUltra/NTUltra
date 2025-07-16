///scrPushOffWepPickup();
// /@description
///@param
function scrPushOffWepPickup(){
	var w = instance_nearest(x,y,WepPickup);
	var range = 40;
	if w != noone && point_distance(x,y,w.x,w.y) <= range
	{
		with w {
			if canBeMoved
			{
				if speed < 4
				{
					motion_add(direction+1,1.8);
					vspeed += 0.05;
				}
			}
		}
	}
	var w = instance_nearest(x,y,chestprop);
	var range = 40;
	if w != noone && point_distance(x,y,w.x,w.y) <= range
	{
		with w {
			if canBeMoved
			{
				if speed < 4
				{
					motion_add(direction+1,1.8);
					vspeed += 0.05;
				}
			}
		}
	}
	var w = instance_nearest(x,y,ChestOpen);
	var range = 40;
	if w != noone && point_distance(x,y,w.x,w.y) <= range
	{
		with w {
			if canBeMoved
			{
				if speed < 4
				{
					motion_add(direction+1,1.8);
					vspeed += 0.05;
				}
			}
		}
	}
	alarm[6] = 2;
}