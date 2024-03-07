/// @description Spreading fire
var sw = sprite_width * 0.5;
var sh = sprite_height * 0.5;
var maxi = sprite_width + sprite_height;
var burning = false;
burning = scrMoodSwingFlameSpread(maxi);
if !burning
{
	var ang = random(360);
	with instance_create(x + lengthdir_x(sw,ang),y + lengthdir_y(sh,ang),MoodFlame) {
		motion_add(ang,3);
	}
}