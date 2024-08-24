/// @description Collision Wall
var msk = mask_index
mask_index = mskBullet2;
if place_meeting(x,y,Wall)
{
	if image_index < image_number - 2
		snd_play(sndBloodHitWall,0.05,true,true,1,false,true,0.75);
	move_bounce_solid(true);
	speed += wallbounce;
	image_index = max(1,image_index - 1);
	image_speed += 0.05;
	image_angle = direction;
}
mask_index = msk;
alarm[0] = 1;