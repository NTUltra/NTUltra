/// @description Lerp Colours
col = make_colour_rgb(
	lerp(colours[currentColour][0],colours[nextColour][0],lerpTime),
	lerp(colours[currentColour][1],colours[nextColour][1],lerpTime),
	lerp(colours[currentColour][2],colours[nextColour][2],lerpTime)
);
lerpTime += 0.01;
alarm[0] = 1;
if lerpTime >= 1
{
	alarm[0] = 10 + irandom(10);
	lerpTime = 0;
	currentColour = nextColour;
	nextColour = irandom(numberOfColours);
}