/// @description Fuse
fuse -= 5;
sprite_index = spr_hurt;
alarm[2] = fuse
if fuse < 5
{
	instance_destroy();
}
snd_play_2d(sndCrownAppear);
instance_create(x,y,WarningCircle);
instance_create(x,y,Smoke);