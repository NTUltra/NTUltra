/// @description De-materialize
image_alpha = 0.45;
if mask_index == mskBandit
{
	snd_play(sndGhostFadeOut,0.2,false,true,3,false,false,0.5,false,id,0,70,25,200);
	instance_create(x,y,Smoke);
}
mask_index = mskPickupThroughWall;