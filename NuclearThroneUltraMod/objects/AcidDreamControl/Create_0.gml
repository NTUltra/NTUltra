/// @description ACID SHADER
shiftValue = 1;
hue = random(255);
hueOpposite = hue + 127;
sat = 190;
val = 190;
wallDiff = 30;
if instance_exists(Player) && Player.area == 150
{
	sat = 0;
}
acidColour = make_colour_hsv(hue,sat - wallDiff,val + wallDiff);
acidFloorColour = make_colour_hsv(hueOpposite,sat,val);
alarm[1] = 1;
alarm[3] = 5;