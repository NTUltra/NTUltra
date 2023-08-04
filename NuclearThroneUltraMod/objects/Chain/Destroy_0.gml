/// @description Burn away
with instance_create(x,y,Flame) {
	motion_add(random(360),1);
	team = other.team;
}
