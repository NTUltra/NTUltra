/// @description Bounce bolt marrow
image_angle = direction;
var msk = mask_index;
mask_index = mskBlade;
instance_create(x,y,Dust);
if place_meeting(x,y,Wall)
{
	move_bounce_solid(true);
	mask_index = msk;
	var walls = ds_list_create();
	var al = instance_place_list(x,y,Wall,walls,false)
	for (var j = 0; j < al; j++) {
		with walls[| j]
		{
			instance_destroy(id,false);
			instance_create(x,y,FloorExplo);
		}
	}
	ds_list_destroy(walls);
	instance_create(x,y,BigWallBreak);
	snd_play(sndBowlingBallHit,0.1);
	bounces--;
	if bounces < 1
		instance_destroy();
}
mask_index = msk;

scrBladeBoltMarrow();