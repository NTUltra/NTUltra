/// @description shift colour
if !(UberCont.opt_shake == 0 && UberCont.opt_freeze == 0)
	shiftValue = max(5,BackCont.shake * 2);
hue += shiftValue;

while hue > 255
{
	hue -= 255;
}
hueOpposite = hue + 127;
while hueOpposite > 255
	hueOpposite -= 255;
acidColour = make_colour_hsv(hue,sat - wallDiff,val + wallDiff);
acidFloorColour = make_colour_hsv(hueOpposite,sat,val);
with Floor
{
	image_blend = other.acidFloorColour;	
}
with FloorExplo
{
	image_blend = other.acidFloorColour;	
}
with Top
{
	image_blend = other.acidColour;
}
with TopSmall
{
	image_blend = other.acidColour;	
}
with Wall
{
	colour = other.acidColour;
	image_blend = other.acidColour;
}
__background_set_colour(acidColour);