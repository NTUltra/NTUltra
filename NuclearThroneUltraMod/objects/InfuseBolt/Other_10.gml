/// @description HIT WALL
if speed != 0
{
	snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
	x -= lengthdir_x(14,image_angle);
	y -= lengthdir_y(14,image_angle);
	instance_create(x,y,Dust)
	image_index = 2
	image_speed = 0;
	if alarm[0]>hitTime+5
		alarm[0] = hitTime+5;
}

