/// @description Some FrostFlames
alarm[1] = 9 + irandom(6);
with instance_create(x,y,IceFlame) {
	motion_add(random(360),1.5+random(1));
	team = other.team;
}