/// @description Wall Collision
if speed != 0
{
	snd_play(sndWallHit,0.1,true,true,1,false,true,0.76)
	speed = 0
	canBeMoved = false;
	var tries = 0
	while place_meeting(x,y,Wall) && tries < 10
	{
		x -= lengthdir_x(2,image_angle);
		y -= lengthdir_y(2,image_angle);
		tries ++;
	}
	tries = 0;
	while !place_meeting(x,y,Wall) && tries < 10
	{
		x += lengthdir_x(2,image_angle);
		y += lengthdir_y(2,image_angle);
		tries ++;
	}
	instance_create(x,y,Dust)
}