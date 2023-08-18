/// @description Spawn more fire
instance_destroy();
with instance_create(x,y,Flame) {
	team = other.team;
	image_index = 1;
	direction = other.direction;
	speed = other.speed*0.8;
}
