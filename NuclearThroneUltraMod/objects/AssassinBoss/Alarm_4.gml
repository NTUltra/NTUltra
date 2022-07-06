/// @description teleport after stun

with instance_nearest(instance_furthest(x+random(120)-60,y+random(120)-60,Floor).x,instance_furthest(x+random(120)-60,y+random(120)-60,Floor).y,Floor)
{
	var o = 16;
	if object_index == FloorExplo
		o = 8;
	with other {
		if point_distance(x + o,y + o,target.x,target.y) <= 64 || place_meeting(other.x + o, other.y + o, Wall) {
			alarm[1] = 1;
			alarm[2] = 0;
			exit;
		}
	}
	
	var assx = other.x;
	var assy = other.y;
	
	other.x = x+o;
	other.y = y+o;
	other.alarm[5] = 15;
	with instance_create(assx,assy,AssassinTeleport) {
		self.assx = other.x+o;
		self.assy = other.y+o;
	}
	repeat(5){
		with instance_create(other.x,other.y,Smoke)
		motion_add(random(360),1+random(3))
	}
}

alarm[1] = 1;
alarm[2] = 0;