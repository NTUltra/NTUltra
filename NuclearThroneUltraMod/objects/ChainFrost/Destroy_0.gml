/// @description Freeze away
with instance_create(x,y,IceFlame) {
	motion_add(random(360),1);
	team = other.team;
}
