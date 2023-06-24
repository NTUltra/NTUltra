/// @description Crown of apocalypse
if speed > 2
{
	var delay = 2;
	alarm[2] = delay;
scrAddToBGFXLayer(
	sprSkidMarkBlood,
	irandom(sprite_get_number(sprSkidMarkBlood)),
	x,
	y,
	(point_distance(xprevious,yprevious,x+hspeed,y+vspeed)/30) * 2,
	skidScale+0.2,
	direction+180,
	c_white,
	clamp((speed/2)-1,0.2,1)
);
}