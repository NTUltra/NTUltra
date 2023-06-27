/// @description Crown of apocalypse
if speed > 2
{
	alarm[2] = 2;
	scrAddToBGFXLayer(
		sprSkidMarkBlood,
		irandom(sprite_get_number(sprSkidMarkBlood)),
		x,
		y,
		(point_distance(bxprev,byprev,x,y)/32),
		skidScale,
		point_direction(bxprev,byprev,x,y),
		c_white,
		clamp((speed/2)-1,0.5,1)
	);
	bxprev = x;
	byprev = y;
}