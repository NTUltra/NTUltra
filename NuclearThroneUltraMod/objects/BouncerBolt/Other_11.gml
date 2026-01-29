/// @description BOUNCE
if hits > 0
{
	move_bounce_solid(false);
	speed = clamp(speed*2,6,24);
	image_angle = direction;
	snd_play(sndShotgunHitWall,0.1,true);
	instance_create(x,y,Smoke);
	hits--;
	speed = max(speed,28 - (hits*2));
}
else {
	event_inherited();	
}
