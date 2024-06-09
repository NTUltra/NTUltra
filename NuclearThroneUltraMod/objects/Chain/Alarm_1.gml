/// @description Some flames
alarm[1] = 8 + irandom(6);
with instance_create(x,y,Flame) {
	motion_add(random(360),2+random(1));
	team = other.team;
}