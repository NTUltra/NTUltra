/// @description Reroll

if rerolls > 1
{
	with instance_create(x,y,choose(AmmoPickup,AmmoPickup,AmmoPickup,HPPickup))
		rerolls = other.rerolls - 1;
} else if rerolls == 1
{
	instance_create(x,y,Rad);
}
else
	event_inherited();
if alarm[4] > 0
{
	var n = instance_nearest(x,y,enemy);
	if n != noone && !collision_line(x,y,n.x,n.y,Wall,false,false) {
		var aim = point_direction(x,y,n.x,n.y);
		with instance_create(x, y, Laser) {
			image_angle = aim;
			team = 2;
			event_perform(ev_alarm,0)
		}
		alarm[4] += actTime * 3;
		if random(10) < 6
		{
			motion_add(aim,1);
			walk = 5 + irandom(10);
			alarm[5] = 1;
		}
	}
}