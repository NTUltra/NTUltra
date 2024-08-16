/// @description No double wall
/*
var n = instance_place(x,y,WallHitMe)
if n != noone && n.id < id
	instance_destroy();
	*/
//else if place_meeting(x,y,Floor)
//	instance_destroy();
if place_meeting(x,y,WallHitMe)
	instance_destroy();
alarm[4] = 10;