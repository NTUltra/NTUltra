/// @description Wall Collision
if speed != 0
{
	snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
	speed = 0
	x -= lengthdir_x(14,image_angle);
	y -= lengthdir_y(14,image_angle);
	instance_create(x,y,Dust)
}