/// @description Collision Wall
var msk = mask_index
mask_index = mskBloodBulletWall;
if place_meeting(x,y,Wall)
{
	snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);
	instance_destroy()
}
mask_index = msk;
alarm[0] = 1;