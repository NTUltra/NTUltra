/// @description Impact Wrists
if speed > 6
{
	alarm[3] = 2;
	scrAddToBGFXLayer(
		sprSkidMark,
		irandom(sprite_get_number(sprSkidMark)),
		x,
		y,
		point_distance(x,y,xprev,yprev)/32,
		skidScale,//(skidScale*clamp(speed/10,0.6,1)),
		point_direction(x,y,xprev,yprev),
		c_white,
		clamp((speed/6)-1,0.7,0.9)
	);
	xprev = x;
	yprev = y;
}