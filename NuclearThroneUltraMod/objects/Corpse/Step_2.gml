/// @description Skidmark
if speed > 6 && false
{
	scrAddToBGFXLayer(
		sprSkidMark,
		irandom(sprite_get_number(sprSkidMark)),
		x,
		y,
		point_distance(xprevious,yprevious,x,y)/32,
		skidScale,
		direction+180,
		c_white,
		clamp((speed/6)-1,0.2,1)
	);
}