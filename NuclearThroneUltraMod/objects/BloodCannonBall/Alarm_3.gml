/// @description Collision wall
if place_meeting(x,y,Wall)
{
	instance_destroy()
	instance_create(x,y,Smoke)
	instance_create(x,y,WallBreak)	
}
alarm[3] = 1;