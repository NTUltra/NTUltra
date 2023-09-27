/// @description FIRE
with instance_create_depth(x,y,depth+1,Flame) {
	team = 2;
	direction = other.direction + 180 + random_range(-30,30);
	speed = other.speed*0.25;
}
if speed > 8
	alarm[3] = 2;
else if speed > 4
	alarm[3] = 3;