/// @description slowly rotate
var a = alarm[0] - 16;
if a > 0
{
	var t = clamp((40 - a) / 40,0,1);
	if a < 40 && a > 1
	{
		image_angle = lerp(startingAngle, 0,t)
	}
	speed = lerp(16,0,t);
}