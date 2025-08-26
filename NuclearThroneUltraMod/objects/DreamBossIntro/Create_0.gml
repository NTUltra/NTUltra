/// @description Radius
radius = 10;
opacity = 1;
area = 10;
prevArea = 1;
showNewArea = true;
maxRadius = 300;
alarm[0] = 1;
invertAcidColour = make_colour_hsv(irandom(255),0,140);
with AcidDreamControl
{
	event_user(0);
	alarm[3] = 300;
}