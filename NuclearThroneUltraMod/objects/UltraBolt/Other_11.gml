/// @description Wall Collision
if wallsdestroyed<1 {
	event_inherited();	
} else {
	x = xprevious;
	y = yprevious;
	speed = clamp(speed,12,18);
	with instance_create(x+hspeed,y+vspeed,BoltWallBreak) {
		image_angle = other.image_angle;	
	}
	with other
	{
		instance_destroy();
		instance_create(x,y,FloorExplo);
	}
	wallsdestroyed-=1;	
}