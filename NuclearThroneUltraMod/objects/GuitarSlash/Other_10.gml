/// @description Music notes
event_inherited();
if array_length(hitEntities) > 0 && instance_exists(hitEntities[array_length(hitEntities) - 1])
{
	var xx = x;
	var yy = y;
	if array_length(hitEntities) > 0 && instance_exists(hitEntities[array_length(hitEntities) - 1])
	{
		xx = hitEntities[array_length(hitEntities) - 1].x;
		yy = hitEntities[array_length(hitEntities) - 1].y;
	}
	var ang = random(360);
	repeat(3)
	{
		with instance_create_depth(xx,yy,depth-1,AnimDestroyRotation)
		{
			motion_add(ang,2);
			rotation = choose(15,-15);
			sprite_index = choose(sprMusicNote1,sprMusicNote2,sprMusicNote3,sprMusicNote4);
			image_angle = random(360);
			image_xscale = choose(1,-1);
			image_yscale = choose(1,-1);
		}
		ang += 120;
	}
}