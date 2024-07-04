/// @description Crack the screen
instance_create(x,y,CrackScreen);
__background_set_colour( make_color_rgb(65,111,35) )
with instance_create(x,y,PortalEnviromentReplacer)
{
	area = 8;
	prevArea = 100;
}
BackCont.shake += 50;